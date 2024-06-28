module tb;

reg car_entered, is_uni_car_entered, car_exited, is_uni_car_exited;
reg [4:0] hour;
wire [9:0] uni_parked_car, parked_car, uni_vacated_space, vacated_space;
wire uni_is_vacated_space, is_vacated_space, parking_is_vacated_space; 

ParkingSystem parkingSystem(
    .car_entered(car_entered),
    .is_uni_car_entered(is_uni_car_entered),
    .car_exited(car_exited),
    .is_uni_car_exited(is_uni_car_exited),
    .hour(hour),
    .uni_parked_car(uni_parked_car),
    .parked_car(parked_car),
    .uni_vacated_space(uni_vacated_space),
    .vacated_space(vacated_space),
    .uni_is_vacated_space(uni_is_vacated_space),
    .is_vacated_space(is_vacated_space),
    .parking_is_vacated_space(parking_is_vacated_space)
);

integer i = 0;
initial
    hour = 0;
always begin
    #400
    if (hour >= 23)
        hour = 0;
    else
        hour = hour + 1;
end

initial begin
    car_entered = 1;
    is_uni_car_entered = 1;
    car_exited = 1;
    is_uni_car_exited = 1;

    // tb1:
    for (i = 0; i < 1000; i = i + 1) begin
        #1 car_entered <= !car_entered;
    end
    
    for (i = 0; i < 1000; i = i + 1) begin
        #1 car_exited <= !car_exited;
    end
    #1000 $stop;

    // // tb2
    // for (i = 0; i < 600; i = i + 1) begin
    //     #1 car_entered <= !car_entered;
    // end


    // for (i = 0; i < 600; i = i + 1) begin
    //     #1 car_exited <= !car_exited;
    // end

    // #2000
    // for (i = 0; i < 1200; i = i + 1) begin
    //     #1 car_entered <= !car_entered;
    // end

    // is_uni_car_entered = 0;
    // for (i = 0; i < 600; i = i + 1) begin
    //     #1 car_entered <= !car_entered;
    // end

    // #600
    // for (i = 0; i < 100; i = i + 1) begin
    //     #1 car_entered <= !car_entered;
    // end
    
    // for (i = 0; i < 100; i = i + 1) begin
    //     #1 car_exited <= !car_exited;
    // end

    // for (i = 0; i < 100; i = i + 1) begin
    //     #1 car_entered <= !car_entered;
    // end

    // #1000 $stop();
end
endmodule
