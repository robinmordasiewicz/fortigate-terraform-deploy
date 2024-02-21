//AWS Configuration
variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "eu-west-1"
}

// Availability zone 1 for the region
variable "az1" {
  default = "eu-west-1a"
}

// Availability zone 2 for the region
variable "az2" {
  default = "eu-west-1c"
}

// IAM role that has proper permission for HA
// Refer to the URL For details. https://docs.fortinet.com/document/fortigate-public-cloud/7.2.0/aws-administration-guide/229470/deploying-fortigate-vm-active-passive-ha-aws-between-multiple-zones
variable "iam" {
  default = "<AWS IAM ROLE NAME>" //Put in the IAM Role name created
}

variable "vpccidr" {
  default = "20.1.0.0/16"
}

variable "publiccidraz1" {
  default = "20.1.0.0/24"
}

variable "privatecidraz1" {
  default = "20.1.1.0/24"
}

variable "hasynccidraz1" {
  default = "20.1.2.0/24"
}

variable "hamgmtcidraz1" {
  default = "20.1.3.0/24"
}

variable "publiccidraz2" {
  default = "20.1.10.0/24"
}

variable "privatecidraz2" {
  default = "20.1.11.0/24"
}

variable "hasynccidraz2" {
  default = "20.1.12.0/24"
}

variable "hamgmtcidraz2" {
  default = "20.1.13.0/24"
}

// License Type to create FortiGate-VM
// Provide the license type for FortiGate-VM Instances, either byol or payg.
variable "license_type" {
  default = "payg"
}

// instance architect
// Either arm or x86
variable "arch" {
  default = "x86"
}

// instance type needs to match the architect
// c5.xlarge is x86_64
// c6g.xlarge is arm
// For detail, refer to https://aws.amazon.com/ec2/instance-types/
variable "size" {
  default = "c5.xlarge"
}

// AMIs for FGTVM-7.4.3
variable "fgtami" {
  type = map(any)
  default = {
    us-east-1 = {
      arm = {
        payg = "ami-0c9c3f242c9819e61"
        byol = "ami-0fcaa1a2afa1759fd"
      },
      x86 = {
        payg = "ami-025a1fb5c3f0440c8"
        byol = "ami-0a9b6f7ad5e66621e"
      }
    },
    us-east-2 = {
      arm = {
        payg = "ami-02033b1d435c97d53"
        byol = "ami-088db2fc27357f82a"
      },
      x86 = {
        payg = "ami-0f12ab0918016aec1"
        byol = "ami-0f7d491678017bb26"
      }
    },
    us-west-1 = {
      arm = {
        payg = "ami-057840cae4a143d49"
        byol = "ami-0bd2dd385f6a68c19"
      },
      x86 = {
        payg = "ami-0c0dc4fa1586e0e52"
        byol = "ami-01f8d1d685f10a957"
      }
    },
    us-west-2 = {
      arm = {
        payg = "ami-02f782c751e4fedab"
        byol = "ami-0e3160592a41bcbd0"
      },
      x86 = {
        payg = "ami-044fa0ae275fb0173"
        byol = "ami-09978da1cacdffe2a"
      }
    },
    af-south-1 = {
      arm = {
        payg = "ami-0b945d0dc4c920960"
        byol = "ami-08d85261777f2882d"
      },
      x86 = {
        payg = "ami-0c7627443ae620909"
        byol = "ami-0e7186ad9439fc4ce"
      }
    },
    ap-east-1 = {
      arm = {
        payg = "ami-083adfde8ff2598ad"
        byol = "ami-080e3527168133670"
      },
      x86 = {
        payg = "ami-06a3302e47c980c7b"
        byol = "ami-0ac0086a795ead09d"
      }
    },
    ap-south-2 = {
      arm = {
        payg = "ami-04f7a610e85ced864"
        byol = "ami-0e90731c89486a312"
      },
      x86 = {
        payg = "ami-06690454df4594e54"
        byol = "ami-048380b8e50a7eb96"
      }
    },
    ap-southeast-3 = {
      arm = {
        payg = "ami-08374cb1ddf9320b0"
        byol = "ami-0f0ac6c0f84dc6fe7"
      },
      x86 = {
        payg = "ami-0b05179ce9b83555a"
        byol = "ami-05b9b665c374b8558"
      }
    },
    ap-south-4 = {
      arm = {
        payg = "ami-0bdd975a2d70f57a3"
        byol = "ami-056cd1a16f812c2fa"
      },
      x86 = {
        payg = "ami-0d28b1daa55ac55a8"
        byol = "ami-0acf9398efb7f6823"
      }
    },
    ap-south-1 = {
      arm = {
        payg = "ami-084bbffcff0b0307c"
        byol = "ami-08435eea961623786"
      },
      x86 = {
        payg = "ami-01af5079f5c404ec6"
        byol = "ami-06838fd59e66b087d"
      }
    },
    ap-northeast-3 = {
      arm = {
        payg = "ami-039fb536a4144831a"
        byol = "ami-0c73fce1ee9c8a176"
      },
      x86 = {
        payg = "ami-0864a615ac0cdeb0d"
        byol = "ami-0c9fec55f15a0d956"
      }
    },
    ap-northeast-2 = {
      arm = {
        payg = "ami-06c74893a59d6d6ae"
        byol = "ami-0097c790e2dc0901e"
      },
      x86 = {
        payg = "ami-05b4749396dd8f799"
        byol = "ami-0a78bd7791dc99122"
      }
    },
    ap-southeast-1 = {
      arm = {
        payg = "ami-0f6f5468d1fb7fe83"
        byol = "ami-058315fa128af2924"
      },
      x86 = {
        payg = "ami-07332a148e89bcc94"
        byol = "ami-0d17bf2b113b9ff1e"
      }
    },
    ap-southeast-2 = {
      arm = {
        payg = "ami-05a049e502da34120"
        byol = "ami-02cbc81a510db7128"
      },
      x86 = {
        payg = "ami-090030dc6771bb087"
        byol = "ami-0fce987eaed1d4ab7"
      }
    },
    ap-northeast-1 = {
      arm = {
        payg = "ami-0155b72a20bc6f1f2"
        byol = "ami-073451fbfdf394cdb"
      },
      x86 = {
        payg = "ami-06df57e9f6a6334e5"
        byol = "ami-0db9397cfa933f7c5"
      }
    },
    ca-central-1 = {
      arm = {
        payg = "ami-09a4edab5412327e3"
        byol = "ami-07a859af10598e814"
      },
      x86 = {
        payg = "ami-071b593deb1203335"
        byol = "ami-01d2a76cb5097ede2"
      }
    },
    ca-west-1 = {
      arm = {
        payg = "ami-025e572400e956fbd"
        byol = "ami-06c89dbe1ba5ba33d"
      },
      x86 = {
        payg = "ami-09feb580b28552637"
        byol = "ami-0a43441979f24904b"
      }
    },
    eu-central-1 = {
      arm = {
        payg = "ami-02a9976c22ce97e17"
        byol = "ami-04379c09eb1fc85af"
      },
      x86 = {
        payg = "ami-0a324dd2e6b522c32"
        byol = "ami-093473fb9380038d1"
      }
    },
    eu-west-1 = {
      arm = {
        payg = "ami-090ab3c36ab241052"
        byol = "ami-0036194f15caa454e"
      },
      x86 = {
        payg = "ami-0973af28ee9e7df13"
        byol = "ami-0dbc1640948719ad5"
      }
    },
    eu-west-2 = {
      arm = {
        payg = "ami-0c52d8bb6bddee0a1"
        byol = "ami-026f2f58de6f99ab3"
      },
      x86 = {
        payg = "ami-06b22eae04451eac7"
        byol = "ami-0d632675e38632a94"
      }
    },
    eu-south-1 = {
      arm = {
        payg = "ami-0c3cd52ae516e9913"
        byol = "ami-04cc4dfc408ea278b"
      },
      x86 = {
        payg = "ami-046805f6feecbd832"
        byol = "ami-085cccbb8b5c6c03f"
      }
    },
    eu-west-3 = {
      arm = {
        payg = "ami-09f3a5b45092bd80d"
        byol = "ami-0ec09783b2fc525d6"
      },
      x86 = {
        payg = "ami-08a9f9119808912ea"
        byol = "ami-0415c44c3cd656a28"
      }
    },
    eu-south-2 = {
      arm = {
        payg = "ami-0b8c72ef793cd917e"
        byol = "ami-008ed2ebb6b38b835"
      },
      x86 = {
        payg = "ami-000b6e5e056590bf7"
        byol = "ami-0a3ff76d85efc3c8e"
      }
    },
    eu-north-1 = {
      arm = {
        payg = "ami-0a210d0493e7dc7f2"
        byol = "ami-0d18597abdf090f83"
      },
      x86 = {
        payg = "ami-04ea3ed1be2cdd786"
        byol = "ami-0a30f95089ffa9ba8"
      }
    },
    eu-central-2 = {
      arm = {
        payg = "ami-02849d590ef3a67d3"
        byol = "ami-0a7b52ce6e531c36a"
      },
      x86 = {
        payg = "ami-01642999ab5b1d0f0"
        byol = "ami-0362d87391d6fef35"
      }
    },
    me-south-1 = {
      arm = {
        payg = "ami-00e40dec3d72ab5f8"
        byol = "ami-07f0537696b4084bc"
      },
      x86 = {
        payg = "ami-0da73ebe94650f286"
        byol = "ami-00ec3009dba0b745e"
      }
    },
    me-central-1 = {
      arm = {
        payg = "ami-06efa6a4727378a83"
        byol = "ami-07db843cb48ff112e"
      },
      x86 = {
        payg = "ami-05c7828b0fb40402f"
        byol = "ami-014b56166fe35ce19"
      }
    },
    il-central-1 = {
      arm = {
        payg = "ami-0f7b947a17313209b"
        byol = "ami-0a6bd9653b2551db8"
      },
      x86 = {
        payg = "ami-06275c5b959941a9a"
        byol = "ami-077cbbaf39266c6cf"
      }
    },
    sa-east-1 = {
      arm = {
        payg = "ami-06d83a26327c499f1"
        byol = "ami-03e8c6925aa9f29a7"
      },
      x86 = {
        payg = "ami-0bc44adcd1dfdd660"
        byol = "ami-0d2cbb4efca5adf11"
      }
    }
  }
}

//  Existing SSH Key on the AWS 
variable "keyname" {
  default = "<AWS SSH KEY>"
}

// HTTPS access port
variable "adminsport" {
  default = "8443"
}

variable "activeport1" {
  default = "20.1.0.10"
}

variable "activeport1mask" {
  default = "255.255.255.0"
}

variable "activeport2" {
  default = "20.1.1.10"
}

variable "activeport2mask" {
  default = "255.255.255.0"
}

variable "activeport3" {
  default = "20.1.2.10"
}

variable "activeport3mask" {
  default = "255.255.255.0"
}

variable "activeport4" {
  default = "20.1.3.10"
}

variable "activeport4mask" {
  default = "255.255.255.0"
}

variable "passiveport1" {
  default = "20.1.10.10"
}

variable "passiveport1mask" {
  default = "255.255.255.0"
}

variable "passiveport2" {
  default = "20.1.11.10"
}

variable "passiveport2mask" {
  default = "255.255.255.0"
}

variable "passiveport3" {
  default = "20.1.12.10"
}

variable "passiveport3mask" {
  default = "255.255.255.0"
}

variable "passiveport4" {
  default = "20.1.13.10"
}

variable "passiveport4mask" {
  default = "255.255.255.0"
}

variable "activeport1gateway" {
  default = "20.1.0.1"
}

variable "activeport2gateway" {
  default = "20.1.1.1"
}

variable "activeport4gateway" {
  default = "20.1.3.1"
}

variable "passiveport1gateway" {
  default = "20.1.10.1"
}

variable "passiveport2gateway" {
  default = "20.1.11.1"
}

variable "passiveport4gateway" {
  default = "20.1.13.1"
}


variable "bootstrap-active" {
  // Change to your own path
  type    = string
  default = "config-active.conf"
}

variable "bootstrap-passive" {
  // Change to your own path
  type    = string
  default = "config-passive.conf"
}

// license file for the active fgt
variable "license" {
  // Change to your own byol license file, license.lic
  type    = string
  default = "license.lic"
}

// license file for the passive fgt
variable "license2" {
  // Change to your own byol license file, license2.lic
  type    = string
  default = "license2.lic"
}

