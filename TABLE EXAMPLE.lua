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
            TargetHitPart = "HumanoidRootPart",
            SafeMode = false,
            DynamicPrediction = false,
            PredictionForSilent = 0,
            AntiAimViewer = false,
            UseClosestPart = false,
            AntiCurve = false,
            Resolver = false, 
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
        Smoothness = 0.25,
        Prediction = 0,
        AimPart = "HumanoidRootPart",
        FOV = 150,
        LockOnKey = Enum.KeyCode.C,
        HoldBind = false,
        LockedTarget = nil
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
    Macros = {
        Enabled         = true,
        Type            = "Ingame",       
        SpeedGlitchKey  = Enum.KeyCode.Z,
        SpeedGlitch     = false
    },    
    Recoil = {
        Enabled = false, -- true for no recoil
    },
    AntiFling = {
        Enabled = false,
    },
    FreeCam = {
        Enabled = false,
        Keybind = Enum.KeyCode.F, 
        Speed = 1,
    },
    NoClip = {
        Enabled = false,
        Keybind = Enum.KeyCode.N 
    },
    AntiSit = {
        Enabled = false
    },
    WeaponMods = {
        RapidFire = {
            Enabled = false,
            Speed = 0.00000000000000000001 -- fast
        },
    }
    
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7960ac6c674c20c3a6ad68907a4880c2.lua"))()
