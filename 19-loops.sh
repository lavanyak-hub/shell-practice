{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-0c6075ae3e35f2fac",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-10-14T13:05:31+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1a",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-30-151.ec2.internal",
            "PrivateIpAddress": "172.31.30.151",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-0aa78a01b3d8bc313",
            "VpcId": "vpc-0fdbcf8a50288e334",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "884159a1-f953-42de-9f1d-7c5f1172e18a",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-10-14T13:05:31+00:00",
                        "AttachmentId": "eni-attach-070b0d64494ba7083",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all-ports",
                            "GroupId": "sg-0386fad148560778b"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:fb:90:dc:71",
                    "NetworkInterfaceId": "eni-0ff03272a42616770",
                    "OwnerId": "113010540234",
                    "PrivateDnsName": "ip-172-31-30-151.ec2.internal",
                    "PrivateIpAddress": "172.31.30.151",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-30-151.ec2.internal",
                            "PrivateIpAddress": "172.31.30.151"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-0aa78a01b3d8bc313",
                    "VpcId": "vpc-0fdbcf8a50288e334",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all-ports",
                    "GroupId": "sg-0386fad148560778b"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "Test"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "113010540234",
    "ReservationId": "r-0d483fdf4b347ecfa"
}
