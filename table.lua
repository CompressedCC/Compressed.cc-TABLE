-- this script is MADE for dahood and hood customs only, but works on other games, dont complain about issues unless its for dahood & hood customs
-- DONT double inject/execute, it will freeze you, not your game but your player.
script_key="";
getgenv().Compressed = {
    Main = {
        Intro = false,
        Build = "V1.7" -- dont change
    },
    SilentAim = {
        Enabled = true,
        Settings = {
            SilentHitChance = 100,
            UseClosestPart = false,
            UseClosestPoint = false,
            TargetHitPart = "HumanoidRootPart",
            SafeMode = false,
            MagicBullet = false,
            DynamicPrediction = false,
            PredictionForSilent = 0,
            AntiAimViewer = false,
            AntiCurve = false, -- removed temp
            AutoEnableResolver = false,
            Resolver = "None",  -- None, Velocity, Recalculation         
            AutoPrediction = { 
                Enabled = true,
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
            FOV = 200,
            ShowFOV = true,
            FovSides = 60, -- put 12 for a less round circle
            FOVColor = Color3.fromRGB(255, 255, 255),
            FOVThickness = 1.5,
            FOVTransparency = 0.7, 
            Tracer = true,
        },
        Internal = { 
            UnlockOnDeath = true,
            UseCamlockTarget = true,
            LockedTarget = nil,
            IsBeingSpectated = nil,
            OriginalIndex = nil
        }
    },
    Aimbot = {
        Enabled = true,
        Smoothness = 0.11,
        Prediction = 0,
        AimPart = "HumanoidRootPart",
        FOV = 150,
        ShowFOV = false,
        LockOnKey = Enum.KeyCode.C,
        HoldBind = false,
        LockedTarget = nil,
        UnlockOnDeath = true,
        Yaxis  = -12, -- the lower the higher the y axis
        Type = "Camera" -- "Camera", "Mouse"
    },
    Camera360 = {
        Enabled = false,
        Sensitivity = 3900, -- SPEED
        ToggleKey = Enum.KeyCode.X,
        Angle = 360,
        Rotating = false
    },
    Macro = {
        Keybind =  Enum.KeyCode.Z,
        Speed = 2,
        Type = "First" -- "Third", "First"

    },
    Triggerbot = {
        Enabled = false,
        Keybind = Enum.KeyCode.T,
        HoldToActivate = false,
        Cooldown = 0.1,
        TargetPart = "Head",
        TeamCheck = false,
        KnifeCheck = true,
        LastShot = 0,
        HitDelay = 0.05,
        MaxDistance = 1000,
        Prediction = true,
        PredictionVelocityMultiplier = 0.165,
        HitChance = 80,
        VisibilityCheck = true
    },
    
    Macros = {
        Enabled = true,
        SpeedGlitchKey = Enum.KeyCode.X,
        SpeedGlitch = false
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
            Speed = 0.00000000000000000001 -- Bullet Cooldown Speed lower is faster
        },
    },
}
