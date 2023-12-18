# aws-ssm-secure-parameter

A custom CloudFormation resource for managing SecureString parameters in AWS SSM. It addresses the limitation in AWS CloudFormation regarding the creation of `SecureString` parameter types. See [AWS Resource SSM Parameter](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-type).

## Features

- Limited to Node.js version 16, as later versions do not preload the `aws-sdk` module.
- Fixed delete operation for SSM parameters.
- Appends a random string suffix to parameters.
- Enforce `SecureString` only parameter types.
- The [cfn-response](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-lambda-function-code-cfnresponsemodule.html) module is preloaded only when using the [ZipFile](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile) Lambda Code property, restricting the ability to install additional packages; this is the actual restriction blocking further Node.js upgrades.

## File Structure

- `infrastructure.yml`: Contains the definition of the custom resource.
- `example.yml`: Showcases the usage of the custom resource.
- `Makefile`: Contains command to deploy the CloudFormation stack.

## Credits

Built upon the original work by [glassechidna/ssmcfn](https://github.com/glassechidna/ssmcfn);

## Resources

- [AWS Custom Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-custom-resources.html)
- [AWS::SSM::Parameter documentation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html)

