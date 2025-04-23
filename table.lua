-- this script is MADE for dahood and hood customs only, but works on other games, dont complain about issues unless its for dahood & hood customs
-- DONT double inject/execute, it will freeze you, not your game but your player.
script_key = ""

getgenv().Compressed = {
    Main = {
        Intro = false, -- Whether to show the intro screen
        Build = "V1.9" -- Current version (do not change manually)
    },

    BulletRedirection = {
        Enabled = true, -- Master switch for Silent Aim
        Settings = {
            SilentHitChance = 100, -- % chance to hit silently
            UseClosestPart = true, -- Aims at the closest part of target
            UseClosestPoint = false, -- Uses closest point on the target’s hitbox
            TargetHitPart = "Head", -- Default part to aim at
            SafeMode = false, -- Disables risky behaviors (like shooting through walls)
            MagicBullet = false, -- Bullets hit the target even if aimed elsewhere
            DynamicPrediction = false, -- Adjusts prediction based on target movement
            PredictionForSilent = 0, -- Static prediction value for silent aim
            AntiAimViewer = false, -- Prevents aim assist from being visible to others
            AntiCurve = false, -- Tries to correct curves in aim path (unused currently)
            AutoEnableResolver = false, -- Automatically uses resolver on missed shots
            Resolver = "None", -- Resolver type: "None", "Default", "Experimental"
            IgnoreInvisibleTargets = true, -- Ignores players not visible
            IgnoreDeadTargets = true, -- Skips targets with 0 HP
            IgnoreNoToolTargets = false, -- Ignores players not holding a tool/weapon
            PingSpoofCompensation = 0, -- Delay adjustment for ping spoofing (not used)
            StaggeredPredictionMode = true, -- Uses custom prediction per body part
            KnockedCheck = true, -- Skips knocked players
            StaggeredPredictionValues = { -- Prediction per part
                Head = 0,
                UpperTorso = 0.08,
                LowerTorso = 0.1,
                HumanoidRootPart = 0
            },
            PlayerWhitelist = {}, -- List of usernames/userIds to never aim at
            PlayerBlacklist = {}, -- List of usernames/userIds to only target
            InternalCooldown = 0, -- Delay between Silent Aim shots
            AutoPrediction = { -- Dynamic prediction based on ping
                Enabled = false,
                Table = { -- Ping-value map for prediction
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
        }, -- <- This comma was missing

        Visualization = {
            FOV = 155, -- Field of view radius for silent aim
            ShowFOV = false, -- Toggles drawing FOV circle
            FovSides = 60, -- Polygon sides for the circle
            FOVColor = Color3.fromRGB(255, 255, 255), -- FOV circle color
            FOVThickness = 1.5, -- FOV line thickness
            FOVTransparency = 0.7, -- Opacity of the FOV circle
            Tracer = false -- Draw tracer line to target
        },

        Internal = {
            UnlockOnDeath = true, -- Unlock target on death
            UseCamlockTarget = false, -- Share target with camera lock
            LockedTarget = nil, -- Currently locked player (runtime)
            IsBeingSpectated = nil, -- Detection for spectators
            OriginalIndex = nil, -- Metamethod backup
            _LastSilentShot = 0 -- Timestamp for internal cooldown
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
        Yaxis = -12,
        Type = "Camera"
    },

    Camera360 = {
        Enabled = false,
        Sensitivity = 3900,
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
        PredictionValue = 0,
        PredictionVelocityMultiplier = 0,
        HitChance = 100,
        VisibilityCheck = true
    },

    Macros = {
        Enabled = true,
        SpeedGlitchKey = Enum.KeyCode.Z,
        SpeedGlitch = false
    },

    Recoil = {
        Enabled = false
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
        Enabled = true,
        Keybind = Enum.KeyCode.N
    },

    AntiSit = {
        Enabled = true
    },

    WeaponMods = {
        RapidFire = {
            Enabled = false,
            BulletCooldown = 0.0000000001
        },
        SpreadModifications = {
            Enabled = true,
            Weapons = {
                M4A1 = { SpreadMultiplier = 0.5 },
                AK47 = { SpreadMultiplier = 0.7 },
                Pistol = { SpreadMultiplier = 0.4 },
                Shotgun = { SpreadMultiplier = 0.8 },
                ["Double-Barrel SG"] = { SpreadMultiplier = 0.65 },
                Revolver = { SpreadMultiplier = 0.5 },
                TacticalShotgun = { SpreadMultiplier = 0.75 }
            }
        }
    }
}
