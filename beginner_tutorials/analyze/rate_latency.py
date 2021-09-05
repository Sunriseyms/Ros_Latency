import matplotlib.pyplot as plt
from matplotlib.pyplot import MultipleLocator
import numpy as np
import sys
import re

#分别存放所有点的横坐标和纵坐标，一一对应
count_list = []
y_list = []

def display(count_list, elapse_time_list, savefigFileName):
    #创建图并命名
    plt.figure('Line fig')
    plt.title('rate latency',fontsize=24)
    plt.minorticks_on()
    plt.tick_params(axis='both',which='major',labelsize=14)
    ax = plt.gca()
    #设置x轴、y轴名称
    ax.set_xlabel('count')
    ax.set_ylabel('elapse_time(us)')

    x_major_locator=MultipleLocator(len(count_list)/10)
    #把x轴的刻度间隔设置为1，并存在变量里
    y_major_locator=MultipleLocator(max(elapse_time_list)/10)
    ax.xaxis.set_major_locator(x_major_locator)
    #把x轴的主刻度设置为1的倍数
    ax.yaxis.set_major_locator(y_major_locator)
    plt.xlim(-0.5,len(count_list))
    plt.ylim(-5,max(elapse_time_list)*1.1)


    #画连线图，以x_list中的值为横坐标，以y_list中的值为纵坐标
    #参数c指定连线的颜色，linewidth指定连线宽度，alpha指定连线的透明度
    ax.plot(count_list, elapse_time_list, color='r', linewidth=1, alpha=0.6)
    plt.savefig(savefigFileName)
    plt.show()

def parseFileLog(filename, count_list, elapse_time_list):
    for line in open(filename):
        data = line.split(' ')
        if(len(data) <4):
            continue
        count_list.append(data[0])
        elapse_time = re.search(r'\d*', data[4])
        print(elapse_time[0])
        elapse_time_list.append(int(elapse_time[0]))

def main(argv):
    print(argv[0])
    print(argv[1])
    count_list=[]
    elapse_time_list=[]
    parseFileLog(argv[1], count_list, elapse_time_list)
    display(count_list, elapse_time_list, argv[2])


if __name__ == "__main__":
    main(sys.argv)
