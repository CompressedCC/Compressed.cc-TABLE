-- this script is MADE for dahood and hood customs only, but works on other games, dont complain about issues unless its for dahood & hood customs
-- DONT double inject/execute, it will freeze you, not your game but your player.
script_key = ""

getgenv().Compressed = {
    Main = {
        Intro = false, -- Whether to show the intro screen
        Build = "V1.9" -- Current version (do not change manually)
    },

    SilentAim = {
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
        },
        Visuals = {
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
        Enabled = true, -- Master switch for aimbot
        Smoothness = 0.05, -- Aim speed smoothing (lower = slower)
        Prediction = 0, -- Static prediction value
        AimPart = "HumanoidRootPart", -- Default target body part
        FOV = 350, -- Aimbot locking radius
        ShowFOV = false, -- Shows the FOV circle
        LockOnKey = Enum.KeyCode.C, -- Keybind to toggle lock
        HoldBind = false, -- Lock only while holding the key
        LockedTarget = nil, -- Internal target
        UnlockOnDeath = true, -- Release target on death
        Yaxis = -12, -- Manual vertical offset (lower = higher lock)
        Type = "Camera" -- Aim mode: "Camera" or "Mouse"
    },

    Camera360 = {
        Enabled = false, -- Spins camera in 360 degrees
        Sensitivity = 3900, -- Speed of camera rotation
        ToggleKey = Enum.KeyCode.X, -- Keybind to toggle
        Angle = 360, -- Full rotation angle
        Rotating = false -- Runtime value for state
    },

    Triggerbot = {
        Enabled = false, -- Master switch for triggerbot
        Keybind = Enum.KeyCode.T, -- Activation key
        HoldToActivate = false, -- Only fires while holding key
        Cooldown = 0.1, -- Delay between shots
        TargetPart = "Head", -- Part to trigger on
        TeamCheck = false, -- Skip teammates
        KnifeCheck = true, -- Only trigger when holding knife
        LastShot = 0, -- Internal delay tracker
        HitDelay = 0.05, -- Wait between detect and fire
        MaxDistance = 1000, -- Maximum target range
        Prediction = true, -- Predicts movement before firing
        PredictionValue = 0, -- Static prediction (if Prediction = true)
        PredictionVelocityMultiplier = 0, -- Adds velocity adjustment
        HitChance = 100, -- Chance to trigger (RNG)
        VisibilityCheck = true -- Only trigger if target is visible
    },

    Macros = {
        Enabled = true, -- Enable macro features
        SpeedGlitchKey = Enum.KeyCode.Z, -- Macro activation key
        SpeedGlitch = false -- Toggles active glitch
    },

    Recoil = {
        Enabled = false -- True = no recoil
    },

    AntiFling = {
        Enabled = false -- Prevents players from flinging you
    },

    FreeCam = {
        Enabled = false, -- Enables free camera mode
        Keybind = Enum.KeyCode.F, -- Keybind to toggle
        Speed = 1 -- Speed of camera movement
    },

    NoClip = {
        Enabled = true, -- Walk through objects
        Keybind = Enum.KeyCode.N -- Toggle key
    },

    AntiSit = {
        Enabled = true -- Prevents sitting state
    },

    WeaponMods = {
        RapidFire = {
            Enabled = false, -- Enable super fast shooting
            BulletCooldown = 0.0000000001 -- Delay between shots (lower = faster)
        },
        SpreadModifications = {
            Enabled = true, -- Modify gun spread values
            Weapons = {
                M4A1 = { SpreadMultiplier = 0.5 }, -- 50% spread
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
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7960ac6c674c20c3a6ad68907a4880c2.lua"))()
