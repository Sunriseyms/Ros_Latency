#include <iostream>
#include "ros/init.h"
#include "ros/node_handle.h"
#include "ros/publisher.h"
#include "ros/rate.h"
#include "ros/ros.h"
#include "talker/Num.h"
#include <thread>
#include <chrono>

int main(int argc, char** args)
{
    std::cout << "talker" << std::endl;
    ros::init(argc, args, "talker");
    ros::NodeHandle n;

    ros::Publisher pub = n.advertise<talker::Num>("Num", 1000);
    ros::Rate loop_rate(1000);

    int count = 0;
    while (ros::ok()) {
        
        talker::Num msg;
        msg.first_name = "yang";
        msg.last_name = "maosheng";
        msg.age = 30;
        msg.score = count;

        pub.publish(msg);

        ros::spinOnce();
        auto before = std::chrono::high_resolution_clock::now();
        loop_rate.sleep();
        auto after = std::chrono::high_resolution_clock::now();
        auto elapse = std::chrono::duration_cast<std::chrono::microseconds>(after-before);
        std::cout << count <<" loop elapse time: " << elapse.count() << "us" << std::endl;
        count++;
    }
    return 0;
}