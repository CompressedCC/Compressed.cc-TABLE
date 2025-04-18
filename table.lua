-- this script is MADE for dahood and dahood only, but works on other games, dont complain about issues unless its for dahood
-- DONT double inject/execute, it will freeze you, not your game but your player.
script_key="";
getgenv().Compressed = {
    Main = {
        Intro = false,
        Build = "V1" -- dont change
    },
    SilentAim = {
        Enabled = true,
        Settings = {
            SilentHitChance = 100,
            UseClosestPart = true,
            TargetHitPart = "HumanoidRootPart",
            SafeMode = false,
            DynamicPrediction = false,
            PredictionForSilent = 0,
            AntiAimViewer = false,
            AntiCurve = true,
            Resolver = false, 
            AutoPrediction = { -- broken i think
                Enabled = false,
                Table = {
                    Ping20 = 0.1294,
                    Ping30 = 0.1258824,
                    Ping40 = 0.115,
                    Ping50 = 0.1294,
                    Ping60 = 0.12588,
                    Ping70 = 0.12591,
                    Ping80 = 0.1294,
                    Ping90 = 0.12746,
                    Ping100 = 0.1276,
                    Ping110 = 0.1294,
                    Ping120 = 0.129411,
                    Ping130 = 0.151,
                    Ping140 = 0.1652131,
                    Ping150 = 0.125333,
                    Ping160 = 0.1223333,
                    Ping170 = 0.15,
                    Ping180 = 0.1923111,
                    Ping190 = 0.165771,
                    Ping200 = 0.1746,
                    Ping250 = 0.1456,
                    Ping300 = 0.12194
                }
            }
        },
        Visuals = {
            FOV = 165,
            ShowFOV = false,
            FOVColor = Color3.fromRGB(255, 255, 255),
            FOVThickness = 1.5,
            FOVTransparency = 0.7
        },
        Internal = { -- dont touch
            LockedTarget = nil,
            IsBeingSpectated = nil,
            OriginalIndex = nil
        }
    },
    Aimbot = {
        Enabled = true,
        Smoothness = 0.8,
        Prediction = 0.23,
        AimPart = "HumanoidRootPart",
        FOV = 150,
        LockOnKey = Enum.KeyCode.C,
        HoldBind = false,
        LockedTarget = nil,
        Yaxis  = -12, -- the lower the higher the y axis
        Type = "Camera" -- "Camera", "Mouse"
    },
    Camera360 = {
        Enabled = false,
        Sensitivity = 3900, -- SPEED
        ToggleKey = Enum.KeyCode.Z,
        Angle = 360,
        Rotating = false
    },
    Triggerbot = {
        Enabled = false,
        Keybind = Enum.KeyCode.T,
        HoldToActivate = false,
        Cooldown = 0.1,
        TargetPart = "Head",
        TeamCheck = false,
        LastShot = 0
    },  
    Recoil = {
        Enabled = false -- true for no recoil
    },
    AntiFling = {
        Enabled = true
    },
    FreeCam = {
        Enabled = false,
        Keybind = Enum.KeyCode.F, 
        Speed = 1
    },
    NoClip = {
        Enabled = false,
        Keybind = Enum.KeyCode.N 
    },
    AntiSit = {
        Enabled = true
    },
    WeaponMods = {
        RapidFire = {
            Enabled = false,
            Speed = 0.00000000000000000001 -- fast
        },
    }
    
}
