ec2_instance{'my-web-server':
  ensure                => 'running',
  region                => 'us-east-1',
  availability_zone     => 'us-east-1d',
  image_id              => 'ami-696e652c',
  instance_type         => 't2.micro',
  security_groups       => ['my-web-group'],
}
