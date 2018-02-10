# aws_create-security-group
Creates AWS security group. Based on steps shown in online course AWS ECS Scaling Docker by Nick Janetakis

## Instructions
* Usage: `generate.sh <name of security group>`
* Example: `./generate.sh admin_useast1`
* Result: AWS will return a JSON string describing the security group, similar to this:
```
GroupId: sg-XXaaaXXa
{
    "SecurityGroups": [
        {
            "IpPermissionsEgress": [
                {
                    "IpProtocol": "-1", 
                    "PrefixListIds": [], 
                    "IpRanges": [
                        {
                            "CidrIp": "0.0.0.0/0"
                        }
                    ], 
                    "UserIdGroupPairs": [], 
                    "Ipv6Ranges": []
                }
            ], 
            "Description": "Security group admin_useast1", 
            "IpPermissions": [], 
            "GroupName": "admin_useast1", 
            "VpcId": "vpc-XaXXXXaX", 
            "OwnerId": "XXXXXXXXXXXX", 
            "GroupId": "sg-XXaaaXXa"
        }
    ]
}
```
