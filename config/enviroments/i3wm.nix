{ config, pkgs, ... }: 

{
    services.xserver = 
    {
        enable = true;
        displayManager.sddm =
        {
            enable = true;
            numlock.enable = true;
        };
        windowManager.i3 = 
        {
            enable = true;
            package = "pkgs.i3-gaps";
            extraPackages = with pkgs; [ dmenu i3status i3lock ]
            config = rec 
            {
                gaps = 
                {
                    inner = 20;
                    outer = 10;
                };
            };
        };
    };
}
