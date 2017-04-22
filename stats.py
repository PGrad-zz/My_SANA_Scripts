#!/bin/python
from sys import argv, stdin
from math import sqrt
def expected(vals):
    return sum(vals) / len(vals)


def stats(nums):
    mean = expected(nums)
    variance = expected(list(map(lambda x: x ** 2, nums))) - mean ** 2
    stddev = sqrt(variance)
    print "Mean: {0} Variance: {1} Stddev: {2}".format(mean, variance, stddev)

print expected(list(map(float, filter(lambda x: x != "\n", stdin.readlines()))))
