{
    disko.devices.disk.main = {
        device = "/dev/sda";
        type = "disk";
        content = {
            type = "gpt";
            partitions = {
                ESP = {
                    size = "1G";
                    type = "EF00";
                    content = {
                        type = "filesystem";
                        format = "vfat";
                        mountpoint = "/boot";
                        mountOptions = [ "umask=0077" ];
                    };
                };
                root = {
                    end = "-16G";
                    content = {
                        type = "filesystem";
                        format = "ext4";
                        mountpoint = "/";
                    };
                };
                plainSwap = {
                    size = "100%";
                    content = {
                        type = "swap";
                        discardPolicy = "both";
                        resumeDevice = true;
                    };
                };
            };
        };
    };
}
