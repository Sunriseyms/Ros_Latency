#include <iostream>
#include <string>
#include "ros/init.h"
#include "ros/node_handle.h"
#include "ros/ros.h"
#include "ros/subscriber.h"
#include "talker/Num.h"

void NumCallback(const talker::Num& msg) {
    std::cout << msg.first_name << " " << msg.last_name << "age" << msg.age << " score: " << msg.score << std::endl;
}

int main(int argc, char** args)
{
    ros::init(argc, args, "listener");
    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe("Num", 1000, NumCallback);

    ros::spin();


    return 0;
}