#!/usr/bin/python3

import argparse
import boto3

parser = argparse.ArgumentParser(description = 'Description')
parser.add_argument('-p', '--aws-profile', dest = 'AwsProfile')
parser.add_argument('-r', '--aws-region', dest = 'AwsRegion', default = 'us-east-1')
args = parser.parse_args()

AwsSession = boto3.session.Session(profile_name = args.AwsProfile, region_name = args.AwsRegion)
Ec2Client = AwsSession.client('ec2')

response  =  Ec2Client.run_instances(
    ImageId = 'ami-29f96d3e',
    MinCount = 1,
    MaxCount = 1,
    KeyName = 'aws-alex-test',
    SecurityGroups = [
        'allow-all-traffic'
    ],
    InstanceType = 't2.nano',
    Placement = {
        'AvailabilityZone': 'us-east-1a',
        'Tenancy': 'default'
    },
    BlockDeviceMappings = [
        {
            'DeviceName': '/dev/sda1',
            'Ebs': {
                'VolumeSize': 10,
                'DeleteOnTermination': True,
                'VolumeType': 'gp2'
            }
        }
    ]
)

print(response)
