# Remnashop
ntf-remnashop-info = 
    <b>💎 Remnashop v{ $version }</b>

    This project was created and is maintained by a single <strike>developer</strike> electrician. Since the bot is completely FREE and open-source, it exists only thanks to your support.

    ⭐ <i>Star us on <a href="https://github.com/snoups/remnashop">GitHub</a> and join our <a href="https://t.me/@remna_shop">community</a>.</i>


# Menu
msg-main-menu =
    { hdr-user-profile }
    { frg-user }

    { hdr-subscription }
    { $status ->
    [ACTIVE]
    { frg-subscription }
    [EXPIRED]
    <blockquote>
    • The subscription has expired.
    
    <i>{ $is_trial ->
    [0] Your subscription has expired. Renew it to continue using the service!
    *[TRUE] Your free trial has ended. Subscribe to continue using the service!
    }</i>
    </blockquote>
    [LIMITED]
    <blockquote>
    • Your traffic has been used up.

    <i>{ $is_trial ->
    [0] { $traffic_strategy ->
        [NO_RESET] Renew the subscription to reset traffic and continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also renew the subscription to reset traffic.
        }
    *[TRUE] { $traffic_strategy ->
        [NO_RESET] Subscribe to continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also subscribe to use the service without limits.
        }
    }</i>
    </blockquote>
    [DISABLED]
    <blockquote>
    • Your subscription is disabled.

    <i>Contact support to find out the reason!</i>
    </blockquote>
    *[NONE]
    <blockquote>
    • You do not have an active subscription.

    <i>{ $trial_available ->
    [0] ↘️ To purchase access go to the "Subscription" menu
    *[TRUE] 🎁 A free trial is available for you — press the button below to get it.
    }</i>
    </blockquote>
    }

msg-menu-devices =
    <b>📱 My devices</b>

    Here you can remove linked devices.
    
    <i>To increase or decrease the device limit you need to change the subscription and select the desired number of devices.</i>

msg-menu-invite =
    <b>👥 Invite friends</b>
    
    Share your unique link and receive rewards as { $reward_type ->
        [POINTS] <b>points that can be exchanged for subscription or real money</b>
        [EXTRA_DAYS] <b>free days added to your subscription</b>
        *[OTHER] { $reward_type }
    }!

    <b>📊 Stats:</b>
    <blockquote>
    👥 Total invited: { $referrals }
    💳 Payments by your link: { $payments }
    { $reward_type -> 
    [POINTS] 💎 Your points: { $points }
    *[EXTRA_DAYS] { empty }
    }
    </blockquote>

msg-menu-invite-about =
    <b>🎁 About the reward</b>

    <b>✨ How to get the reward:</b>
    <blockquote>
    { $accrual_strategy ->
    [ON_FIRST_PAYMENT] The reward is given for the first subscription purchase by the invited user.
    [ON_EACH_PAYMENT] The reward is given for each purchase or renewal by the invited user.
    *[OTHER] { $accrual_strategy }
    }
    </blockquote>

    <b>💎 What you get:</b>
    <blockquote>
    { $max_level -> 
    [1] For invited friends: { $reward_level_1 }
    *[MORE]
    { $identical_reward ->
    [0]
    1️⃣ For your friends: { $reward_level_1 }
    2️⃣ For friends invited by your friends: { $reward_level_2 }
    *[1]
    For your friends and friends of your friends: { $reward_level_1 }
    }
    }
    
    { $reward_strategy_type ->
    [AMOUNT] { $reward_type ->
        [POINTS] { space }
        [EXTRA_DAYS] <i>(All extra days are added to your current subscription)</i>
        *[OTHER] { $reward_type }
    }
    [PERCENT] { $reward_type ->
        [POINTS] <i>(Percent of points from the price of the subscription they bought)</i>
        [EXTRA_DAYS] <i>(Percent of extra days from the subscription they bought)</i>
        *[OTHER] { $reward_type }
    }
    *[OTHER] { $reward_strategy_type }
    }
    </blockquote>

msg-invite-reward = { $value }{ $reward_strategy_type ->
    [AMOUNT] { $reward_type ->
        [POINTS] { space }{ $value -> 
            [one] point
            [few] points
            *[more] points 
            }
        [EXTRA_DAYS] { space }extra { $value -> 
            [one] day
            [few] days
            *[more] days
            }
        *[OTHER] { $reward_type }
    }
    [PERCENT] % { $reward_type ->
        [POINTS] points
        [EXTRA_DAYS] extra days
        *[OTHER] { $reward_type }
    }
    *[OTHER] { $reward_strategy_type }
    }


# Dashboard
msg-dashboard-main = <b>🛠 Dashboard</b>
msg-users-main = <b>👥 Users</b>
msg-broadcast-main = <b>📢 Broadcast</b>
msg-statistics-main = { $statistics }
    
msg-statistics-users =
    <b>👥 User statistics</b>

    <blockquote>
    • <b>Total</b>: { $total_users }
    • <b>New today</b>: { $new_users_daily }
    • <b>New this week</b>: { $new_users_weekly }
    • <b>New this month</b>: { $new_users_monthly }

    • <b>With subscription</b>: { $users_with_subscription }
    • <b>Without subscription</b>: { $users_without_subscription }
    • <b>With trial</b>: { $users_with_trial }

    • <b>Blocked</b>: { $blocked_users }
    • <b>Blocked the bot</b>: { $bot_blocked_users }

    • <b>User → purchase conversion</b>: { $user_conversion }%
    • <b>Trial → subscription conversion</b>: { $trial_conversion }%
    </blockquote>

msg-statistics-transactions =
    <b>🧾 Transactions statistics</b>

    <blockquote>
    • <b>Total transactions</b>: { $total_transactions }
    • <b>Completed transactions</b>: { $completed_transactions }
    • <b>Free transactions</b>: { $free_transactions }
    { $popular_gateway ->
    [0] { empty }
    *[HAS] • <b>Popular gateway</b>: { $popular_gateway }
    }
    </blockquote>

    { $payment_gateways }

msg-statistics-subscriptions =
    <b>💳 Subscriptions statistics</b>

    <blockquote>
    • <b>Active</b>: { $total_active_subscriptions }
    • <b>Expired</b>: { $total_expire_subscriptions }
    • <b>Trials</b>: { $active_trial_subscriptions }
    • <b>Expiring (7 days)</b>: { $expiring_subscriptions }
    </blockquote>

    <blockquote>
    • <b>Unlimited</b>: { $total_unlimited }
    • <b>With traffic limit</b>: { $total_traffic }
    • <b>With device limit</b>: { $total_devices }
    </blockquote>

msg-statistics-plans = 
    <b>📦 Plans statistics</b>

    { $plans }

msg-statistics-promocodes =
    <b>🎁 Promo codes statistics</b>

    <blockquote>
    • <b>Total activations</b>: { $total_promo_activations }
    • <b>Most popular promo code</b>: { $most_popular_promo ->
    [0] { unknown }
    *[HAS] { $most_popular_promo }
    }
    • <b>Days issued</b>: { $total_promo_days }
    • <b>Traffic issued</b>: { $total_promo_days }
    • <b>Subscriptions issued</b>: { $total_promo_subscriptions }
    • <b>Personal discounts issued</b>: { $total_promo_personal_discounts }
    • <b>One-time purchase discounts issued</b>: { $total_promo_purchase_discounts }
    </blockquote>

msg-statistics-referrals =
    <b>👪 Referral system statistics</b>
    
    <blockquote>
    • <b></b>:
    </blockquote>

msg-statistics-transactions-gateway =
    <b>{ gateway-type }:</b>
    <blockquote>
    • <b>Total income</b>: { $total_income }{ $currency }
    • <b>Daily income</b>: { $daily_income }{ $currency }
    • <b>Weekly income</b>: { $weekly_income }{ $currency }
    • <b>Monthly income</b>: { $monthly_income }{ $currency }
    • <b>Average check</b>: { $average_check }{ $currency }
    • <b>Discounts sum</b>: { $total_discounts }{ $currency }
    </blockquote>

msg-statistics-plan =
    <b>{ $plan_name }:</b> { $popular -> 
    [0] { space }
    *[HAS] (⭐)
    }
    <blockquote>
    • <b>Total subscriptions</b>: { $total_subscriptions }
    • <b>Active subscriptions</b>: { $active_subscriptions }
    • <b>Popular duration</b>: { $popular_duration }

    • <b>Total income</b>: 
    { $all_income }
    </blockquote>

msg-statistics-plan-income = { $income }{ $currency }
    


# Access
msg-access-main =
    <b>🔓 Access mode</b>
    
    <b>Status</b>: { access-mode }.

msg-access-conditions =
    <b>⚙️ Access conditions</b>

msg-access-rules =
    <b>✳️ Edit rules link</b>

    Enter the link (in https://telegram.org/tos format).

msg-access-channel =
    <b>❇️ Edit channel/group link</b>

    If your group has no @username, send the group ID and invite link as separate messages.
    
    If you have a public channel/group, enter only the @username.


# Broadcast
msg-broadcast-list = <b>📄 Broadcasts list</b>
msg-broadcast-plan-select = <b>📦 Select a plan for broadcast</b>
msg-broadcast-send = <b>📢 Send broadcast ({ audience-type })</b>

    { $audience_count } { $audience_count ->
    [one] user
    [few] users
    *[more] users
    } will receive the broadcast

msg-broadcast-content =
    <b>✉️ Broadcast content</b>

    Send any message: text, image, or both (HTML supported).

msg-broadcast-buttons = <b>✳️ Broadcast buttons</b>

msg-broadcast-view =
    <b>📢 Broadcast</b>

    <blockquote>
    • <b>ID</b>: <code>{ $broadcast_id }</code>
    • <b>Status</b>: { broadcast-status }
    • <b>Audience</b>: { audience-type }
    • <b>Created</b>: { $created_at }
    </blockquote>

    <blockquote>
    • <b>Total messages</b>: { $total_count }
    • <b>Successful</b>: { $success_count }
    • <b>Failed</b>: { $failed_count }
    </blockquote>


# Users
msg-users-recent-registered = <b>🆕 Recently registered</b>
msg-users-recent-activity = <b>📝 Recent activity</b>
msg-user-transactions = <b>🧾 User transactions</b>
msg-user-devices = <b>📱 User devices ({ $current_count } / { $max_count })</b>
msg-user-give-access = <b>🔑 Grant access to plan</b>

msg-users-search =
    <b>🔍 Search user</b>

    Enter the user ID, part of the name, or forward any of their messages.

msg-users-search-results =
    <b>🔍 Search user</b>

    Found <b>{ $count }</b> { $count ->
    [one] user
    [few] users
    *[more] users
    }, { $count ->
    [one] matching
    *[more] matching
    } the query

msg-user-main = 
    <b>📝 User info</b>

    { hdr-user-profile }
    { frg-user-details }

    <b>💸 Discount:</b>
    <blockquote>
    • <b>Personal</b>: { $personal_discount }%
    • <b>On next purchase</b>: { $purchase_discount }%
    </blockquote>
    
    { hdr-subscription }
    { $status ->
    [ACTIVE]
    { frg-subscription }
    [EXPIRED]
    <blockquote>
    • The subscription has expired.
    </blockquote>
    [LIMITED]
    <blockquote>
    • Traffic limit exceeded.
    </blockquote>
    [DISABLED]
    <blockquote>
    • Subscription disabled.
    </blockquote>
    *[NONE]
    <blockquote>
    • No current subscription.
    </blockquote>
    }

msg-user-sync = 
    <b>🌀 Sync user</b>

    <b>🛍 Remnashop:</b> { $bot_version }
    <blockquote>
    { $has_bot_subscription -> 
    [0] Data is missing
    *[HAS]{ $bot_subscription }
    }
    </blockquote>

    <b>🌊 RemnaWave:</b> { $remna_version }
    <blockquote>
    { $has_remna_subscription -> 
    [0] Data is missing
    *[HAS] { $remna_subscription }
    }
    </blockquote>

    Choose the current data to sync.

msg-user-sync-version = { $version ->
    [NEWER] (newer)
    [OLDER] (older)
    *[UNKNOWN] { empty }
    }

msg-user-sync-subscription =
    • <b>ID</b>: <code>{ $id }</code>
    • Status: { $status -> 
    [ACTIVE] Active
    [DISABLED] Disabled
    [LIMITED] Traffic exhausted
    [EXPIRED] Expired
    [DELETED] Deleted
    *[OTHER] { $status }
    }
    • Link: <a href="{ $url }">*********</a>

    • Traffic limit: { $traffic_limit }
    • Device limit: { $device_limit }
    • Remaining: { $expire_time }

    • Internal squads: { $internal_squads ->
    [0] { unknown }
    *[HAS] { $internal_squads }
    }
    • External squad: { $external_squad ->
    [0] { unknown }
    *[HAS] { $external_squad }
    }
    • Traffic reset: { $traffic_limit_strategy -> 
    [NO_RESET] On payment
    [DAY] Every day
    [WEEK] Every week
    [MONTH] Every month
    *[OTHER] { $traffic_limit_strategy }
    }
    • Tag: { $tag -> 
    [0] { unknown }
    *[HAS] { $tag }
    }

msg-user-sync-waiting =
    <b>🌀 Syncing user</b>

    Please wait... The user synchronization is in progress. You will be returned to the user editor automatically when finished.

msg-user-give-subscription =
    <b>🎁 Grant subscription</b>

    Select the plan you want to grant the user.

msg-user-give-subscription-duration =
    <b>⏳ Select duration</b>

    Choose the duration of the granted subscription.

msg-user-discount =
    <b>💸 Edit personal discount</b>

    Choose from buttons or enter a custom value.

msg-user-points =
    <b>💎 Edit referral system points</b>

    <b>Current points: { $current_points }</b>

    Choose from buttons or enter a value to add or remove.

msg-user-subscription-traffic-limit =
    <b>🌐 Change traffic limit</b>

    Choose from buttons or enter a value (in GB) to change the traffic limit.

msg-user-subscription-device-limit =
    <b>📱 Change device limit</b>

    Choose from buttons or enter a value to change the device limit.

msg-user-subscription-expire-time =
    <b>⏳ Change expiration time</b>

    <b>Expires in: { $expire_time }</b>

    Choose from buttons or enter a value (in days) to add or subtract.

msg-user-subscription-squads =
    <b>🔗 Change squads list</b>

    { $internal_squads ->
    [0] { empty }
    *[HAS] <b>⏺️ Internal:</b> { $internal_squads }
    }

    { $external_squad ->
    [0] { empty }
    *[HAS] <b>⏹️ External:</b> { $external_squad }
    }

msg-user-subscription-internal-squads =
    <b>⏺️ Change internal squads list</b>

    Select which internal groups will be assigned to this user.

msg-user-subscription-external-squads =
    <b>⏹️ Change external squad</b>

    Select which external group will be assigned to this user.

msg-user-subscription-info =
    <b>💳 Current subscription info</b>
    
    { hdr-subscription }
    { frg-subscription-details }

    <blockquote>
    • <b>Squads</b>: { $squads -> 
    [0] { unknown }
    *[HAS] { $squads }
    }
    • <b>First connection</b>: { $first_connected_at -> 
    [0] { unknown }
    *[HAS] { $first_connected_at }
    }
    • <b>Last connection</b>: { $last_connected_at ->
    [0] { unknown }
    *[HAS] { $last_connected_at } ({ $node_name })
    } 
    </blockquote>

    { hdr-plan }
    { frg-plan-snapshot }

msg-user-transaction-info =
    <b>🧾 Transaction info</b>

    { hdr-payment }
    <blockquote>
    • <b>ID</b>: <code>{ $payment_id }</code>
    • <b>Type</b>: { purchase-type }
    • <b>Status</b>: { transaction-status }
    • <b>Payment method</b>: { gateway-type }
    • <b>Amount</b>: { frg-payment-amount }
    • <b>Created</b>: { $created_at }
    </blockquote>

    { $is_test -> 
    [1] ⚠️ Test transaction
    *[0]
    { hdr-plan }
    { frg-plan-snapshot }
    }
    
msg-user-role = 
    <b>👮‍♂️ Change role</b>
    
    Choose a new role for the user.

msg-users-blacklist =
    <b>🚫 Blacklist</b>

    Blocked: <b>{ $count_blocked }</b> / <b>{ $count_users }</b> ({ $percent }%).

msg-user-message =
    <b>📩 Send a message to the user</b>

    Send any message: text, image, or both (HTML supported).
    

# RemnaWave
msg-remnawave-main =
    <b>🌊 RemnaWave</b>
    
    <b>🖥️ System:</b>
    <blockquote>
    • <b>CPU</b>: { $cpu_cores } { $cpu_cores ->
    [one] core
    [few] cores
    *[more] cores
    } { $cpu_threads } { $cpu_threads ->
    [one] thread
    [few] threads
    *[more] threads
    }
    • <b>RAM</b>: { $ram_used } / { $ram_total } ({ $ram_used_percent }%)
    • <b>Uptime</b>: { $uptime }
    </blockquote>

msg-remnawave-users =
    <b>👥 Users</b>

    <b>📊 Stats:</b>
    <blockquote>
    • <b>Total</b>: { $users_total }
    • <b>Active</b>: { $users_active }
    • <b>Disabled</b>: { $users_disabled }
    • <b>Limited</b>: { $users_limited }
    • <b>Expired</b>: { $users_expired }
    </blockquote>

    <b>🟢 Online:</b>
    <blockquote>
    • <b>Last day</b>: { $online_last_day }
    • <b>Last week</b>: { $online_last_week }
    • <b>Never logged in</b>: { $online_never }
    • <b>Now online</b>: { $online_now }
    </blockquote>

msg-remnawave-host-details =
    <b>{ $remark } ({ $status ->
    [ON] on
    *[OFF] off
    }):</b>
    <blockquote>
    • <b>Address</b>: <code>{ $address }:{ $port }</code>
    { $inbound_uuid ->
    [0] { empty }
    *[HAS] • <b>Inbound</b>: <code>{ $inbound_uuid }</code>
    }
    </blockquote>

msg-remnawave-node-details =
    <b>{ $country } { $name } ({ $status ->
    [ON] connected
    *[OFF] disconnected
    }):</b>
    <blockquote>
    • <b>Address</b>: <code>{ $address }{ $port -> 
    [0] { empty }
    *[HAS]:{ $port }
    }</code>
    • <b>Uptime (xray)</b>: { $xray_uptime }
    • <b>Users online</b>: { $users_online }
    • <b>Traffic</b>: { $traffic_used } / { $traffic_limit }
    </blockquote>

msg-remnawave-inbound-details =
    <b>🔗 { $tag }</b>
    <blockquote>
    • <b>ID</b>: <code>{ $inbound_id }</code>
    • <b>Protocol</b>: { $type } ({ $network })
    { $port ->
    [0] { empty }
    *[HAS] • <b>Port</b>: { $port }
    }
    { $security ->
    [0] { empty }
    *[HAS] • <b>Security</b>: { $security } 
    }
    </blockquote>

msg-remnawave-hosts =
    <b>🌐 Hosts</b>
    
    { $host }

msg-remnawave-nodes = 
    <b>🖥️ Nodes</b>

    { $node }

msg-remnawave-inbounds =
    <b>🔌 Inbounds</b>

    { $inbound }


# RemnaShop
msg-remnashop-main = <b>🛍 RemnaShop v{ $version }</b>
msg-admins-main = <b>👮‍♂️ Administrators</b>


# Gateways
msg-gateways-main = <b>🌐 Payment gateways</b>
msg-gateways-settings = <b>🌐 Configuration { gateway-type }</b>
msg-gateways-default-currency = <b>💸 Default currency</b>
msg-gateways-placement = <b>🔢 Change placement</b>

msg-gateways-field =
    <b>🌐 Configuration { gateway-type }</b>

    Enter a new value for { $field }.


# Referral
msg-referral-main =
    <b>👥 Referral system</b>

    <blockquote>
    • <b>Status</b>: { $is_enable -> 
        [1] 🟢 Enabled
        *[0] 🔴 Disabled
        }
    • <b>Reward type</b>: { reward-type }
    • <b>Levels</b>: { $referral_level }
    • <b>Accrual condition</b>: { accrual-strategy }
    • <b>Reward form</b>: { reward-strategy }
    </blockquote>

    Select an item to change.

msg-referral-level =
    <b>🔢 Change level</b>

    Choose the maximum referral level.

msg-referral-reward-type =
    <b>🎀 Change reward type</b>

    Select a new reward type.
    
msg-referral-accrual-strategy =
    <b>📍 Change accrual condition</b>

    Choose when the reward will be credited.


msg-referral-reward-strategy =
    <b>⚖️ Change reward form</b>

    Choose how the reward will be calculated.

msg-referral-reward-level = { $level } level: { $value }{ $reward_strategy_type ->
    [AMOUNT] { $reward_type ->
        [POINTS] { space }{ $value -> 
            [one] point
            [few] points
            *[more] points
            }
        [EXTRA_DAYS] { space }extra { $value -> 
            [one] day
            [few] days
            *[more] days
            }
        *[OTHER] { $reward_type }
    }
    [PERCENT] % { $reward_type ->
        [POINTS] points
        [EXTRA_DAYS] extra days
        *[OTHER] { $reward_type }
    }
    *[OTHER] { $reward_strategy_type }
    }
    
msg-referral-reward =
    <b>🎁 Change reward</b>

    <blockquote>
    { $reward }
    </blockquote>

    { $reward_strategy_type ->
        [AMOUNT] Enter the amount of { $reward_type ->
            [POINTS] points
            [EXTRA_DAYS] days
            *[OTHER] { $reward_type }
        }
        [PERCENT] Enter the percent of { $reward_type ->
            [POINTS] <u>subscription price</u>
            [EXTRA_DAYS] <u>subscription duration</u>
            *[OTHER] { $reward_type }
        }
        *[OTHER] { $reward_strategy_type }
    } (format: level=value)

# Plans
msg-plans-main = <b>📦 Plans</b>

msg-plan-configurator =
    <b>📦 Plan configurator</b>

    <blockquote>
    • <b>Name</b>: { $name }
    • <b>Type</b>: { plan-type }
    • <b>Availability</b>: { availability-type }
    • <b>Status</b>: { $is_active -> 
        [1] 🟢 Enabled
        *[0] 🔴 Disabled
        }
    </blockquote>
    
    <blockquote>
    • <b>Traffic limit</b>: { $is_unlimited_traffic -> 
        [1] { unlimited }
        *[0] { $traffic_limit }
        }
    • <b>Device limit</b>: { $is_unlimited_devices -> 
        [1] { unlimited }
        *[0] { $device_limit }
        }
    </blockquote>

    Select an item to change.

msg-plan-name =
    <b>🏷️ Change name</b>

    { $name ->
    [0] { space }
    *[HAS]
    <blockquote>
    { $name }
    </blockquote>
    }

    Enter a new plan name.

msg-plan-description =
    <b>💬 Change description</b>

    { $description ->
    [0] { space }
    *[HAS]
    <blockquote>
    { $description }
    </blockquote>
    }

    Enter a new plan description.

msg-plan-tag =
    <b>📌 Change tag</b>

    { $tag ->
    [0] { space }
    *[HAS]
    <blockquote>
    { $tag }
    </blockquote>
    }

    Enter a new plan tag (only uppercase Latin letters, digits and underscore).

msg-plan-type =
    <b>🔖 Change type</b>

    Select a new plan type.

msg-plan-availability =
    <b>✴️ Change availability</b>

    Select the plan availability.

msg-plan-traffic =
    <b>🌐 Change traffic limit and reset strategy</b>

    Enter a new plan traffic limit (in GB) and select its reset strategy.

msg-plan-devices =
    <b>📱 Change device limit</b>

    Enter a new device limit for the plan.

msg-plan-durations =
    <b>⏳ Plan durations</b>

    Select a duration to change the price.

msg-plan-duration =
    <b>⏳ Add plan duration</b>

    Enter a new duration (in days).

msg-plan-prices =
    <b>💰 Change prices for duration ({ $value ->
            [-1] { unlimited }
            *[other] { unit-day }
        })</b>

    Select a currency with a price to change.

msg-plan-price =
    <b>💰 Change price for duration ({ $value ->
            [-1] { unlimited }
            *[other] { unit-day }
        })</b>

    Enter a new price for currency { $currency }.

msg-plan-allowed-users = 
    <b>👥 Change allowed users list</b>

    Enter user ID to add to the list.

msg-plan-squads =
    <b>🔗 Squads</b>

    { $internal_squads ->
    [0] { space }
    *[HAS] <b>⏺️ Internal:</b> { $internal_squads }
    }

    { $external_squad ->
    [0] { space }
    *[HAS] <b>⏹️ External:</b> { $external_squad }
    }

msg-plan-internal-squads =
    <b>⏺️ Change internal squads list</b>

    Select which internal groups will be assigned to this plan.

msg-plan-external-squads =
    <b>⏹️ Change external squad</b>

    Select which external group will be assigned to this plan.


# Notifications
msg-notifications-main = <b>🔔 Notifications settings</b>
msg-notifications-user = <b>👥 User notifications</b>
msg-notifications-system = <b>⚙️ System notifications</b>


# Subscription
msg-subscription-main = <b>💳 Subscription</b>
msg-subscription-plans = <b>📦 Select a plan</b>
msg-subscription-new-success = To start using our service, press the <code>`{ btn-subscription-connect }`</code> button and follow the instructions!
msg-subscription-renew-success = Your subscription has been extended by { $added_duration }.

msg-subscription-details =
    <b>{ $plan }:</b>
    <blockquote>
    { $description ->
    [0] { empty }
    *[HAS]
    { $description }
    }

    • <b>Traffic limit</b>: { $traffic }
    • <b>Device limit</b>: { $devices }
    { $period ->
    [0] { empty }
    *[HAS] • <b>Duration</b>: { $period }
    }
    { $final_amount ->
    [0] { empty }
    *[HAS] • <b>Price</b>: { frg-payment-amount }
    }
    </blockquote>

msg-subscription-duration = 
    <b>⏳ Select duration</b>

    { msg-subscription-details }

msg-subscription-payment-method =
    <b>💳 Choose payment method</b>

    { msg-subscription-details }

msg-subscription-confirm =
    { $purchase_type ->
    [RENEW] <b>🛒 Confirm subscription renewal</b>
    [CHANGE] <b>🛒 Confirm subscription change</b>
    *[OTHER] <b>🛒 Confirm subscription purchase</b>
    }

    { msg-subscription-details }

    { $purchase_type ->
    [RENEW] <i>⚠️ Current subscription will be <u>renewed</u> for the selected period.</i>
    [CHANGE] <i>⚠️ The current subscription will be <u>replaced</u> with the selected one without recalculating the remaining time.</i>
    *[OTHER] { empty }
    }

msg-subscription-trial =
    <b>✅ Trial subscription obtained successfully!</b>

    { msg-subscription-new-success }

msg-subscription-success =
    <b>✅ Payment successful!</b>

    { $purchase_type ->
    [NEW] { msg-subscription-new-success }
    [RENEW] { msg-subscription-renew-success }
    [CHANGE] { msg-subscription-change-success }
    *[OTHER] { $purchase_type }
    }

msg-subscription-change-success = 
    Your subscription has been changed.

    <b>{ $plan_name }</b>
    { frg-subscription }

msg-subscription-failed = 
    <b>❌ An error occurred!</b>

    Do not worry, support has already been notified and will contact you soon. We apologize for the inconvenience.


# Importer
msg-importer-main =
    <b>📥 Import users</b>

    Starting synchronization: checking all users in RemnaWave. If a user is not in the bot database, they will be created and receive a temporary subscription. If user data differs, it will be updated automatically.

msg-importer-from-xui =
    <b>📥 Import users (3X-UI)</b>
    
    { $has_exported -> 
    [1]
    <b>🔍 Found:</b>
    <blockquote>
    Total users: { $total }
    Active: { $active }
    Expired: { $expired }
    </blockquote>
    *[0]
    Importing all active users with numeric email.

    It is recommended to disable users who do not have Telegram ID in the email field in advance. The operation may take a long time depending on the number of users.

    Send the database file (in .db format).
    }

msg-importer-squads =
    <b>🔗 Internal squads list</b>

    Select which internal groups will be available for imported users.

msg-importer-import-completed =
    <b>📥 Users import completed</b>
    
    <b>📃 Info:</b>
    <blockquote>
    • <b>Total users</b>: { $total_count }
    • <b>Successfully imported</b>: { $success_count }
    • <b>Failed to import</b>: { $failed_count }
    </blockquote>

msg-importer-sync-completed =
    <b>📥 Users synchronization completed</b>

    <b>📃 Info:</b>
    <blockquote>
    Total users in panel: { $total_panel_users }
    Total users in bot: { $total_bot_users }

    New users: { $added_users }
    Subscriptions added: { $added_subscription }
    Subscriptions updated: { $updated}
    
    Users without Telegram ID: { $missing_telegram }
    Errors during sync: { $errors }
    </blockquote>


# Promocodes
msg-promocodes-main = <b>🎟 Promo codes</b>
msg-promocode-configurator =
    <b>🎟 Promo code configurator</b>

    <blockquote>
    • <b>Code</b>: { $code }
    • <b>Type</b>: { promocode-type }
    • <b>Availability</b>: { availability-type }
    • <b>Status</b>: { $is_active -> 
        [1] 🟢 Enabled
        *[0] 🔴 Disabled
        }
    </blockquote>

    <blockquote>
    { $promocode_type ->
    [DURATION] • <b>Duration</b>: { $reward }
    [TRAFFIC] • <b>Traffic</b>: { $reward }
    [DEVICES] • <b>Devices</b>: { $reward }
    [SUBSCRIPTION] • <b>Subscription</b>: { frg-plan-snapshot }
    [PERSONAL_DISCOUNT] • <b>Personal discount</b>: { $reward }%
    [PURCHASE_DISCOUNT] • <b>Purchase discount</b>: { $reward }%
    *[OTHER] { $promocode_type }
    }
    • <b>Lifetime</b>: { $lifetime }
    • <b>Max activations</b>: { $max_activations }
    </blockquote>

    Select an item to change.
