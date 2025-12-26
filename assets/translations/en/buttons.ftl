# Back
btn-back = ⬅️ Back
btn-main-menu = ↩️ Main menu
btn-back-main-menu = ↩️ Return to main menu
btn-back-dashboard = ↩️ Return to dashboard


# Remnashop
btn-remnashop-release-latest = 👀 View
btn-remnashop-how-upgrade = ❓ How to upgrade
btn-remnashop-github = ⭐ GitHub
btn-remnashop-telegram = 👪 Telegram
btn-remnashop-donate = 💰 Support the developer
btn-remnashop-guide = ❓ Guide


# Other
btn-rules-accept = ✅ Accept rules
btn-channel-join = ❤️ Join channel
btn-channel-confirm = ✅ Confirm
btn-notification-close = ❌ Close
btn-contact-support = 📩 Contact support

btn-squad-choice = { $selected -> 
    [1] 🔘
    *[0] ⚪
    } { $name }


# Menu
btn-menu-connect = 🚀 Connect

btn-menu-connect-not-available =
    ⚠️ { $status -> 
    [LIMITED] TRAFFIC LIMIT EXCEEDED
    [EXPIRED] SUBSCRIPTION EXPIRED
    *[OTHER] YOUR SUBSCRIPTION IS NOT WORKING
    } ⚠️

btn-menu-trial = 🎁 TRY FOR FREE
btn-menu-devices = 📱 My devices
btn-menu-devices-empty = ⚠️ No linked devices
btn-menu-subscription = 💳 Subscription
btn-menu-payment = 💸 Payment
btn-menu-invite = 👥 Invite
btn-menu-invite-about = ❓ About reward
btn-menu-invite-copy = 🔗 Copy link
btn-menu-invite-send = 📩 Invite
btn-menu-invite-qr = 🧾 QR code
btn-menu-invite-withdraw-points = 💎 Redeem points
btn-menu-support = 🆘 Support
btn-menu-dashboard = 🛠 Dashboard


# Dashboard
btn-dashboard-statistics = 📊 Statistics
btn-dashboard-users = 👥 Users
btn-dashboard-broadcast = 📢 Broadcast
btn-dashboard-promocodes = 🎟 Promo codes
btn-dashboard-access = 🔓 Access mode
btn-dashboard-remnawave = 🌊 RemnaWave
btn-dashboard-remnashop = 🛍 RemnaShop
btn-dashboard-importer = 📥 Import users


# Statistics
btn-statistics-page =
    { $target_page1 ->
    [1] 👥
    [2] 🧾
    [3] 💳
    [4] 📦
    [5] 🎁
    [6] 👪
    *[OTHER] page
    }

btn-statistics-current-page =
    { $current_page1 ->
    [1] [👥]
    [2] [🧾]
    [3] [💳]
    [4] [📦]
    [5] [🎁]
    [6] [👪]
    *[OTHER] [page]
    }


# Users
btn-users-search = 🔍 Search user
btn-users-recent-registered = 🆕 Recently registered
btn-users-recent-activity = 📝 Recent activity
btn-users-blacklist = 🚫 Blacklist
btn-users-unblock-all = 🔓 Unblock all


# User
btn-user-discount = 💸 Edit discount
btn-user-points = 💎 Edit points
btn-user-statistics = 📊 Statistics
btn-user-message = 📩 Message
btn-user-role = 👮‍♂️ Change role
btn-user-transactions = 🧾 Transactions
btn-user-give-access = 🔑 Give access to plans
btn-user-current-subscription = 💳 Current subscription
btn-user-subscription-traffic-limit = 🌐 Traffic limit
btn-user-subscription-device-limit = 📱 Device limit
btn-user-subscription-expire-time = ⏳ Expiration time
btn-user-subscription-squads = 🔗 Squads
btn-user-subscription-traffic-reset = 🔄 Reset traffic
btn-user-subscription-devices = 🧾 Device list
btn-user-subscription-url = 📋 Copy link
btn-user-subscription-set = ✅ Set subscription
btn-user-subscription-delete = ❌ Delete
btn-user-message-preview = 👀 Preview
btn-user-message-confirm = ✅ Send
btn-user-sync = 🌀 Sync
btn-user-sync-remnawave = 🌊 Use RemnaWave data
btn-user-sync-remnashop = 🛍 Use RemnaShop data
btn-user-give-subscription = 🎁 Grant subscription
btn-user-subscription-internal-squads = ⏺️ Internal squads
btn-user-subscription-external-squads = ⏹️ External squad

btn-user-allowed-plan-choice = { $selected ->
    [1] 🔘
    *[0] ⚪
    } { $plan_name }

btn-user-subscription-active-toggle = { $is_active ->
    [1] 🔴 Disable
    *[0] 🟢 Enable
    }

btn-user-transaction = { $status ->
    [PENDING] 🕓
    [COMPLETED] ✅
    [CANCELED] ❌
    [REFUNDED] 💸
    [FAILED] ⚠️
    *[OTHER] { $status }
} { $created_at }

btn-user-block = { $is_blocked ->
    [1] 🔓 Unblock
    *[0] 🔒 Block
    }


# Broadcast
btn-broadcast-list = 📄 List of all broadcasts
btn-broadcast-all = 👥 Everyone
btn-broadcast-plan = 📦 By plan
btn-broadcast-subscribed = ✅ Subscribed
btn-broadcast-unsubscribed = ❌ Unsubscribed
btn-broadcast-expired = ⌛ Expired
btn-broadcast-trial = ✳️ With trial
btn-broadcast-content = ✉️ Edit content
btn-broadcast-buttons = ✳️ Edit buttons
btn-broadcast-preview = 👀 Preview
btn-broadcast-confirm = ✅ Start broadcast
btn-broadcast-refresh = 🔄 Refresh data
btn-broadcast-viewing = 👀 Viewing
btn-broadcast-cancel = ⛔ Stop broadcast
btn-broadcast-delete = ❌ Delete sent

btn-broadcast-button-choice = { $selected ->
    [1] 🔘
    *[0] ⚪
    }

btn-broadcast =  { $status ->
    [PROCESSING] ⏳
    [COMPLETED] ✅
    [CANCELED] ⛔
    [DELETED] ❌
    [ERROR] ⚠️
    *[OTHER] { $status }
} { $created_at }


# Go to
btn-goto-subscription = 💳 Buy subscription
btn-goto-promocode = 🎟 Activate promo code
btn-goto-invite = 👥 Invite
btn-goto-subscription-renew = 🔄 Renew subscription
btn-goto-user-profile = 👤 Go to user


# Promocodes
btn-promocodes-list = 📃 Promo codes list
btn-promocodes-search = 🔍 Search promo code
btn-promocodes-create = 🆕 Create
btn-promocodes-delete = 🗑️ Delete
btn-promocodes-edit = ✏️ Edit


# Access
btn-access-mode = { access-mode }
btn-access-conditions = ⚙️ Access conditions
btn-access-rules = ✳️ Rules acceptance
btn-access-channel = ❇️ Channel subscription

btn-access-condition-toggle = { $enabled ->
    [1] 🔘 Enabled
    *[0] ⚪ Disabled
    }


# RemnaShop
btn-remnashop-admins = 👮‍♂️ Administrators
btn-remnashop-gateways = 🌐 Payment gateways
btn-remnashop-referral = 👥 Referral system
btn-remnashop-advertising = 🎯 Advertising
btn-remnashop-plans = 📦 Plans
btn-remnashop-notifications = 🔔 Notifications
btn-remnashop-logs = 📄 Logs
btn-remnashop-audit = 🔍 Audit


# Gateways
btn-gateway-title = { gateway-type }
btn-gateways-setting = { $field }
btn-gateways-webhook-copy = 📋 Copy webhook

btn-gateway-active = { $is_active ->
    [1] 🟢 Enabled
    *[0] 🔴 Disabled
    }

btn-gateway-test = 🐞 Test
btn-gateways-default-currency = 💸 Default currency
btn-gateways-placement = 🔢 Change placement

btn-gateways-default-currency-choice = { $enabled -> 
    [1] 🔘
    *[0] ⚪
    } { $symbol } { $currency }


# Referral
btn-referral-level = 🔢 Level
btn-referral-reward-type = 🎀 Reward type
btn-referral-accrual-strategy = 📍 Accrual condition
btn-referral-reward-strategy = ⚖️ Reward form
btn-referral-reward = 🎁 Reward

btn-referral-enable = { $is_enable -> 
    [1] 🟢 Enabled
    *[0] 🔴 Disabled
    }

btn-referral-level-choice = { $type -> 
    [1] 1️⃣
    [2] 2️⃣
    [3] 3️⃣
    *[OTHER] { $type }
    }

btn-referral-reward-choice = { $type -> 
    [POINTS] 💎 Points
    [EXTRA_DAYS] ⏳ Days
    *[OTHER] { $type }
    }

btn-referral-accrual-strategy-choice = { $type -> 
    [ON_FIRST_PAYMENT] 💳 First payment
    [ON_EACH_PAYMENT] 💸 Each payment
    *[OTHER] { $type }
    }

btn-referral-reward-strategy-choice = { $type -> 
    [AMOUNT] 🔸 Fixed
    [PERCENT] 🔹 Percent
    *[OTHER] { $type }
    }


# Notifications
btn-notifications-user = 👥 User

btn-notifications-user-choice = { $enabled ->
    [1] 🔘
    *[0] ⚪
    } { $type ->
    [EXPIRES_IN_3_DAYS] Subscription expires (3 days)
    [EXPIRES_IN_2_DAYS] Subscription expires (2 days)
    [EXPIRES_IN_1_DAYS] Subscription expires (1 day)
    [EXPIRED] Subscription expired
    [LIMITED] Traffic exhausted
    [EXPIRED_1_DAY_AGO] Subscription expired (1 day ago)
    [REFERRAL_ATTACHED] Referral attached
    [REFERRAL_REWARD] Reward received
    *[OTHER] { $type }
    }

btn-notifications-system = ⚙️ System

btn-notifications-system-choice = { $enabled -> 
    [1] 🔘
    *[0] ⚪
    } { $type ->
    [BOT_LIFETIME] Bot lifetime
    [BOT_UPDATE] Bot updates
    [USER_REGISTERED] User registered
    [SUBSCRIPTION] Subscription
    [PROMOCODE_ACTIVATED] Promo code activated
    [TRIAL_GETTED] Trial received
    [NODE_STATUS] Node status
    [USER_FIRST_CONNECTED] First user connection
    [USER_HWID] User devices
    *[OTHER] { $type }
    }


# Plans
btn-plans-statistics = 📊 Statistics
btn-plans-create = 🆕 Create
btn-plan-save = ✅ Save
btn-plan-create = ✅ Create plan
btn-plan-delete = ❌ Delete
btn-plan-name = 🏷️ Name
btn-plan-description = 💬 Description
btn-plan-description-remove = ❌ Remove current description
btn-plan-tag = 📌 Tag
btn-plan-tag-remove = ❌ Remove current tag
btn-plan-type = 🔖 Type
btn-plan-availability = ✴️ Availability
btn-plan-durations-prices = ⏳ Durations and 💰 Prices
btn-plan-traffic = 🌐 Traffic
btn-plan-devices = 📱 Devices
btn-plan-allowed = 👥 Allowed users
btn-plan-squads = 🔗 Squads
btn-plan-internal-squads = ⏺️ Internal squads
btn-plan-external-squads = ⏹️ External squad
btn-allowed-user = { $id }
btn-plan-duration-add = 🆕 Add duration
btn-plan-price-choice = 💸 { $price } { $currency }

btn-plan = { $is_active ->
    [1] 🟢
    *[0] 🔴 
    } { $name }

btn-plan-active = { $is_active -> 
    [1] 🟢 Enabled
    *[0] 🔴 Disabled
    }

btn-plan-type-choice = { $type -> 
    [TRAFFIC] 🌐 Traffic
    [DEVICES] 📱 Devices
    [BOTH] 🔗 Traffic + devices
    [UNLIMITED] ♾️ Unlimited
    *[OTHER] { $type }
    }

btn-plan-availability-choice = { $type -> 
    [ALL] 🌍 For all
    [NEW] 🌱 For new
    [EXISTING] 👥 For existing
    [INVITED] ✉️ For invited
    [ALLOWED] 🔐 For allowed
    [TRIAL] 🎁 For trial
    *[OTHER] { $type }
    }

btn-plan-traffic-strategy-choice = { $selected ->
    [1] 🔘 { traffic-strategy }
    *[0] ⚪ { traffic-strategy }
    }

btn-plan-duration = ⌛ { $value ->
    [-1] { unlimited }
    *[other] { unit-day }
    }


# RemnaWave
btn-remnawave-users = 👥 Users
btn-remnawave-hosts = 🌐 Hosts
btn-remnawave-nodes = 🖥️ Nodes
btn-remnawave-inbounds = 🔌 Inbounds


# Importer
btn-importer-from-xui = 💩 Import from 3X-UI panel
btn-importer-from-xui-shop = 🛒 3xui-shop bot
btn-importer-sync = 🌀 Start sync
btn-importer-squads = 🔗 Internal squads
btn-importer-import-all = ✅ Import all
btn-importer-import-active = ❇️ Import active


# Subscription
btn-subscription-new = 💸 Buy subscription
btn-subscription-renew = 🔄 Renew
btn-subscription-change = 🔃 Change
btn-subscription-promocode = 🎟 Activate promo code
btn-subscription-payment-method = { gateway-type } | { $price } { $currency }
btn-subscription-pay = 💳 Pay
