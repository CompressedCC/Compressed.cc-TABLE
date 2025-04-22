-- this script is MADE for dahood and hood customs only, but works on other games, dont complain about issues unless its for dahood & hood customs
-- DONT double inject/execute, it will freeze you, not your game but your player.
script_key="";
getgenv().Compressed = {
    Main = {
        Intro = false,
        Build = "V1.9" -- dont change
    },
    SilentAim = {
        Enabled = true,
        Settings = {
            SilentHitChance = 100,
            UseClosestPart = false,
            UseClosestPoint = false,
            TargetHitPart = "Head",
            SafeMode = false,
            MagicBullet = false,
            DynamicPrediction = false,
            PredictionForSilent = 0.15,
            AntiAimViewer = false,
            AntiCurve = false,
            AutoEnableResolver = false,
            Resolver = "None",
            IgnoreInvisibleTargets = true,
            IgnoreDeadTargets = true,
            IgnoreNoToolTargets = false,
            PingSpoofCompensation = 0, -- dont use for now
            StaggeredPredictionMode = true,
            KnockedCheck = true,
            StaggeredPredictionValues = { -- prediction for each part use 0 for head lowk
                Head = 0,
                UpperTorso = 0.08,
                LowerTorso = 0.1,
                HumanoidRootPart = 0
            },
            PlayerWhitelist = {}, -- usernames/userIds
            PlayerBlacklist = {},
            InternalCooldown = 0, -- cooldown for silent aim between shots,  use 0 for just normal silent
            AutoPrediction = {
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
            FOV = 155,
            ShowFOV = false,
            FovSides = 60,
            FOVColor = Color3.fromRGB(255, 255, 255),
            FOVThickness = 1.5,
            FOVTransparency = 0.7,
            Tracer = false,
        },
        Internal = {
            UnlockOnDeath = true,
            UseCamlockTarget = false,
            LockedTarget = nil,
            IsBeingSpectated = nil,
            OriginalIndex = nil,
            _LastSilentShot = 0,
        }
    },
        
    Aimbot = {
        Enabled = true,
        Smoothness = 0.05,
        Prediction = 0,
        AimPart = "HumanoidRootPart",
        FOV = 350,
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
        SpeedGlitchKey = Enum.KeyCode.Z,
        SpeedGlitch = false
    },
    Recoil = {
        Enabled = false -- true for no recoil
    },
    AntiFling = {
        Enabled = false
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
        Enabled = false
    },
    WeaponMods = {
        RapidFire = {
            Enabled = false,
            -- Controls how fast bullets fire; lower = faster
            BulletCooldown = 0000000001 -- or 0.1e-10 for clarity
        },
    
        WeaponMods = {
            RapidFire = {
                Enabled = false,
                BulletCooldown = 0.0000000001 -- lower = faster bullets
            },   
            SpreadModifications = {
                Enabled = true,
        
                Weapons = {
                    M4A1 = {
                        SpreadMultiplier = 0.5
                    },
                    AK47 = {
                        SpreadMultiplier = 0.7
                    },
                    Pistol = {
                        SpreadMultiplier = 0.4
                    },
                    Shotgun = {
                        SpreadMultiplier = 0.8
                    },
                    ["Double-Barrel SG"] = {
                        SpreadMultiplier = 0.65
                    },
                    Revolver = {
                        SpreadMultiplier = 0.5
                    },
                    TacticalShotgun = {
                        SpreadMultiplier = 0.75
                    }
                }
            }
        }
    }            
}

