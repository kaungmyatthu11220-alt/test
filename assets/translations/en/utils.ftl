# Layout
space = {" "}
empty = { "!empty!" }
btn-test = Button
msg-test = Message
development = Temporarily unavailable!
test-payment = Test payment
unlimited = ∞
unknown = —

unit-unlimited = { $value ->
    [-1] { unlimited }
    [0] { unlimited }
    *[other] { $value }
}

# Other
payment-invoice-description = { purchase-type } subscription { $name } for { $duration }
contact-support-help = Hello! I need help.
contact-support-paysupport = Hello! I would like to request a refund.
contact-support-withdraw-points = Hello! I would like to request a points exchange.
cmd-start = Restart bot
cmd-paysupport = Refund
cmd-help = Help

referral-invite-message =
    { space }
    🚀 Hi! Want a stable and fast VPN?
    
    ↘️ CLICK HERE AND TRY FOR FREE!
    { $url }


# Headers
hdr-user = <b>👤 User:</b>
hdr-user-profile = <b>👤 Profile:</b>

hdr-subscription = { $is_trial ->
    [1] <b>🎁 Trial subscription:</b>
    *[0] <b>💳 Subscription:</b>
    }

hdr-plan = <b>📦 Plan:</b>
hdr-payment = <b>💰 Payment:</b>
hdr-error = <b>⚠️ Error:</b>
hdr-node = <b>🖥 Node:</b>
hdr-hwid = <b>📱 Device:</b>

# Fragments
frg-user =
    <blockquote>
    • <b>ID</b>: <code>{ $user_id }</code>
    • <b>Name</b>: { $user_name }
    { $personal_discount ->
    [0] { empty }
    *[HAS] • <b>Your discount</b>: { $personal_discount }%
    }
    </blockquote>

frg-user-info =
    <blockquote>
    • <b>ID</b>: <code>{ $user_id }</code>
    • <b>Name</b>: { $user_name } { $username -> 
        [0] { empty }
        *[HAS] (<a href="tg://user?id={ $user_id }">@{ $username }</a>)
    }
    </blockquote>

frg-user-details =
    <blockquote>
    • <b>ID</b>: <code>{ $user_id }</code>
    • <b>Name</b>: { $user_name } { $username -> 
        [0] { space }
        *[HAS] (<a href="tg://user?id={ $user_id }">@{ $username }</a>)
    }
    • <b>Role</b>: { role }
    • <b>Language</b>: { language }
    { $show_points ->
    [1] • <b>Points</b>: { $points }
    *[0] { empty }
    }
    </blockquote>

frg-user-discounts-details =
    <blockquote>
    • <b>Personal</b>: { $personal_discount }%
    • <b>On next purchase</b>: { $purchase_discount }%
    </blockquote>

frg-subscription =
    <blockquote>
    • <b>Traffic limit</b>: { $traffic_limit }
    • <b>Device limit</b>: { $device_limit }
    • <b>Remaining</b>: { $expire_time }
    </blockquote>

frg-subscription-details =
    <blockquote>
    • <b>ID</b>: <code>{ $subscription_id }</code>
    • <b>Status</b>: { subscription-status }
    • <b>Traffic</b>: { $traffic_used } / { $traffic_limit }
    • <b>Device limit</b>: { $device_limit }
    • <b>Remaining</b>: { $expire_time }
    </blockquote>

frg-payment-info =
    <blockquote>
    • <b>ID</b>: <code>{ $payment_id }</code>
    • <b>Payment method</b>: { gateway-type }
    • <b>Amount</b>: { frg-payment-amount }
    </blockquote>

frg-payment-amount = { $final_amount }{ $currency } { $discount_percent -> 
    [0] { space }
    *[more] { space } <strike>{ $original_amount }{ $currency }</strike> (-{ $discount_percent }%)
    }

frg-plan-snapshot =
    <blockquote>
    • <b>Plan</b>: <code>{ $plan_name }</code>
    • <b>Type</b>: { plan-type }
    • <b>Traffic limit</b>: { $plan_traffic_limit }
    • <b>Device limit</b>: { $plan_device_limit }
    • <b>Duration</b>: { $plan_duration }
    </blockquote>

frg-plan-snapshot-comparison =
    <blockquote>
    • <b>Plan</b>: <code>{ $previous_plan_name }</code> -> <code>{ $plan_name }</code>
    • <b>Type</b>: { $previous_plan_type } -> { plan-type }
    • <b>Traffic limit</b>: { $previous_plan_traffic_limit } -> { $plan_traffic_limit }
    • <b>Device limit</b>: { $previous_plan_device_limit } -> { $plan_device_limit }
    • <b>Duration</b>: { $previous_plan_duration } -> { $plan_duration }
    </blockquote>

frg-node-info =
    <blockquote>
    • <b>Name</b>: { $country } { $name }
    • <b>Address</b>: <code>{ $address }:{ $port }</code>
    • <b>Traffic</b>: { $traffic_used } / { $traffic_limit }
    • <b>Last status</b>: { $last_status_message }
    • <b>Status changed</b>: { $last_status_change }
    </blockquote>

frg-user-hwid =
    <blockquote>
    • <b>HWID</b>: <code>{ $hwid }</code>

    • <b>Platform</b>: { $platform }
    • <b>Model</b>: { $device_model }
    • <b>OS version</b>: { $os_version }
    • <b>Agent</b>: { $user_agent }
    </blockquote>

# Roles
role-dev = Developer
role-admin = Administrator
role-user = User
role = 
    { $role ->
    [DEV] { role-dev }
    [ADMIN] { role-admin }
    *[USER] { role-user }
}


# Units
unit-device = { $value -> 
    [-1] { unlimited }
    *[other] { $value } 
} { $value ->
    [-1] { space }
    [one] device
    [few] devices
    *[other] devices
}

unit-byte = { $value } B
unit-kilobyte = { $value } KB
unit-megabyte = { $value } MB
unit-gigabyte = { $value } GB
unit-terabyte = { $value } TB

unit-second = { $value } { $value ->
    [one] second
    [few] seconds
    *[other] seconds
}

unit-minute = { $value } { $value ->
    [one] minute
    [few] minutes
    *[other] minutes
}

unit-hour = { $value } { $value ->
    [one] hour
    [few] hours
    *[other] hours
}

unit-day = { $value } { $value ->
    [one] day
    [few] days
    *[other] days
}

unit-month = { $value } { $value ->
    [one] month
    [few] months
    *[other] months
}

unit-year = { $value } { $value ->
    [one] year
    [few] years
    *[other] years
}


# Types
plan-type = { $plan_type -> 
    [TRAFFIC] Traffic
    [DEVICES] Devices
    [BOTH] Traffic + devices
    [UNLIMITED] Unlimited
    *[OTHER] { $plan_type }
}

promocode-type = { $promocode_type -> 
    [DURATION] Duration
    [TRAFFIC] Traffic
    [DEVICES] Devices
    [SUBSCRIPTION] Subscription
    [PERSONAL_DISCOUNT] Personal discount
    [PURCHASE_DISCOUNT] Purchase discount
    *[OTHER] { $promocode_type }
}

availability-type = { $availability_type -> 
    [ALL] For all
    [NEW] For new
    [EXISTING] For existing
    [INVITED] For invited
    [ALLOWED] For allowed
    [TRIAL] For trial
    *[OTHER] { $availability_type }
}

gateway-type = { $gateway_type ->
    [TELEGRAM_STARS] Telegram Stars
    [YOOKASSA] YooKassa
    [YOOMONEY] YooMoney
    [CRYPTOMUS] Cryptomus
    [HELEKET] Heleket
    [URLPAY] UrlPay
    *[OTHER] { $gateway_type }
}

access-mode = { $access_mode ->
    [PUBLIC] 🟢 Allowed for all
    [INVITED] ⚪ Allowed for invited
    [PURCHASE_BLOCKED] 🟡 Purchases disabled
    [REG_BLOCKED] 🟠 Registration disabled
    [RESTRICTED] 🔴 Restricted for all
    *[OTHER] { $access_mode }
}

audience-type = { $audience_type ->
    [ALL] Everyone
    [PLAN] By plan
    [SUBSCRIBED] Subscribed
    [UNSUBSCRIBED] Unsubscribed
    [EXPIRED] Expired
    [TRIAL] Trial
    *[OTHER] { $audience_type }
}

broadcast-status = { $broadcast_status ->
    [PROCESSING] Processing
    [COMPLETED] Completed
    [CANCELED] Canceled
    [DELETED] Deleted
    [ERROR] Error
    *[OTHER] { $broadcast_status }
}

transaction-status = { $transaction_status ->
    [PENDING] Pending
    [COMPLETED] Completed
    [CANCELED] Canceled
    [REFUNDED] Refunded
    [FAILED] Failed
    *[OTHER] { $transaction_status }
}

subscription-status = { $subscription_status ->
    [ACTIVE] Active
    [DISABLED] Disabled
    [LIMITED] Traffic exhausted
    [EXPIRED] Expired
    [DELETED] Deleted
    *[OTHER] { $subscription_status }
}

purchase-type = { $purchase_type ->
    [NEW] Purchase
    [RENEW] Renew
    [CHANGE] Change
    *[OTHER] { $purchase_type }
}

traffic-strategy = { $strategy_type -> 
    [NO_RESET] On payment
    [DAY] Every day
    [WEEK] Every week
    [MONTH] Every month
    *[OTHER] { $strategy_type }
    }

reward-type = { $reward_type -> 
    [POINTS] Points
    [EXTRA_DAYS] Days
    *[OTHER] { $reward_type }
    }

accrual-strategy = { $accrual_strategy_type -> 
    [ON_FIRST_PAYMENT] First payment
    [ON_EACH_PAYMENT] Each payment
    *[OTHER] { $accrual_strategy_type }
    }

reward-strategy = { $reward_strategy_type -> 
    [AMOUNT] Fixed
    [PERCENT] Percent
    *[OTHER] { $reward_strategy_type }
    }

language = { $language ->
    [ar] Arabic
    [az] Azerbaijani
    [be] Belarusian
    [cs] Czech
    [de] German
    [en] English
    [es] Spanish
    [fa] Persian
    [fr] French
    [he] Hebrew
    [hi] Hindi
    [id] Indonesian
    [it] Italian
    [ja] Japanese
    [kk] Kazakh
    [ko] Korean
    [ms] Malay
    [nl] Dutch
    [pl] Polish
    [pt] Portuguese
    [ro] Romanian
    [ru] Russian
    [sr] Serbian
    [tr] Turkish
    [uk] Ukrainian
    [uz] Uzbek
    [vi] Vietnamese
    *[OTHER] { $language }
}