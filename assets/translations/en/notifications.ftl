# Errors
ntf-error-lost-context = <i>⚠️ An error occurred. The dialog was restarted.</i>
ntf-error-log-not-found = <i>⚠️ Error: Log file not found.</i>


# Events
ntf-event-error =
    #EventError

    <b>🔅 Event: An error occurred!</b>

    { $user -> 
    [1]
    { hdr-user }
    { frg-user-info }
    *[0] { space }
    }

    { hdr-error }
    <blockquote>
    { $error }
    </blockquote>

ntf-event-error-remnawave =
    #EventError

    <b>🔅 Event: Error connecting to RemnaWave!</b>

    <blockquote>
    Without an active connection, the bot cannot work correctly!
    </blockquote>

    { hdr-error }
    <blockquote>
    { $error }
    </blockquote>

ntf-event-error-webhook =
    #EventError

    <b>🔅 Event: Webhook error detected!</b>

    { hdr-error }
    <blockquote>
    { $error }
    </blockquote>

ntf-event-bot-startup =
    #EventBotStarted

    <b>🔅 Event: Bot started!</b>

    <blockquote>
    • <b>Access mode</b>: { access-mode }
    </blockquote>

ntf-event-bot-shutdown =
    #EventBotShutdown

    <b>🔅 Event: Bot stopped!</b>

ntf-event-bot-update =
    #EventBotUpdate

    <b>🔅 Event: Remnashop update detected!</b>

    <blockquote>
    • <b>Local version</b>: { $local_version }
    • <b>Available version</b>: { $remote_version }
    </blockquote>

ntf-event-new-user =
    #EventNewUser

    <b>🔅 Event: New user!</b>

    { hdr-user }
    { frg-user-info }

    { $has_referrer ->
    [0] { empty }
    *[HAS]
    <b>🤝 Referrer:</b>
    <blockquote>
    • <b>ID</b>: <code>{ $referrer_user_id }</code>
    • <b>Name</b>: { $referrer_user_name } { $referrer_username -> 
        [0] { empty }
        *[HAS] (<a href="tg://user?id={ $referrer_user_id }">@{ $referrer_username }</a>)
    }
    </blockquote>
    }
    
ntf-event-subscription-trial =
    #EventTrialGetted

    <b>🔅 Event: Trial subscription received!</b>

    { hdr-user }
    { frg-user-info }
    
    { hdr-plan }
    { frg-plan-snapshot }

ntf-event-subscription-new =
    #EventSubscriptionNew

    <b>🔅 Event: Subscription purchased!</b>

    { hdr-payment }
    { frg-payment-info }

    { hdr-user }
    { frg-user-info }

    { hdr-plan }
    { frg-plan-snapshot }

ntf-event-subscription-renew =
    #EventSubscriptionRenew

    <b>🔅 Event: Subscription renewed!</b>
    
    { hdr-payment }
    { frg-payment-info }

    { hdr-user }
    { frg-user-info }

    { hdr-plan }
    { frg-plan-snapshot }

ntf-event-subscription-change =
    #EventSubscriptionChange

    <b>🔅 Event: Subscription changed!</b>

    { hdr-payment }
    { frg-payment-info }

    { hdr-user }
    { frg-user-info }

    { hdr-plan }
    { frg-plan-snapshot-comparison }

ntf-event-node-connection-lost =
    #EventNode

    <b>🔅 Event: Connection to node lost!</b>

    { hdr-node }
    { frg-node-info }

ntf-event-node-connection-restored =
    #EventNode

    <b>🔅 Event: Connection to node restored!</b>

    { hdr-node }
    { frg-node-info }

ntf-event-node-traffic =
    #EventNode

    <b>🔅 Event: Node reached traffic threshold!</b>

    { hdr-node }
    { frg-node-info }

# ntf-event-user-sync =
#     #EventUser

#     <b>🔅 Event: User synchronization!</b>

#     { hdr-user }
#     { frg-user-info }

#     { hdr-subscription }
#     { frg-subscription-details }

# ntf-event-user-deleted =
#     #EventUser

#     <b>🔅 Event: User removed from panel!</b>

#     { hdr-user }
#     { frg-user-info }

#     { hdr-subscription }
#     { frg-subscription-details }

ntf-event-user-first-connected =
    #EventUser

    <b>🔅 Event: User first connected!</b>

    { hdr-user }
    { frg-user-info }

    { hdr-subscription }
    { frg-subscription-details }

ntf-event-user-expiring =
    { $is_trial ->
    [0]
    <b>⚠️ Attention! Your subscription will end in { unit-day }.</b>
    
    Renew it in advance to avoid losing access to the service!
    *[TRUE]
    <b>⚠️ Attention! Your free trial will end in { unit-day }.</b>

    Subscribe to avoid losing access to the service!
    }

ntf-event-user-expired =
    <b>⛔ Attention! Access suspended — VPN not working.</b>

    { $is_trial ->
    [0] Your subscription has expired, renew it to continue using VPN!
    *[TRUE] Your free trial has ended. Subscribe to continue using the service!
    }
    
ntf-event-user-expired-ago =
    <b>⛔ Attention! Access suspended — VPN not working.</b>

    { $is_trial ->
    [0] Your subscription expired { unit-day } ago, renew it to continue using the service!
    *[TRUE] Your free trial ended { unit-day } ago. Subscribe to continue using the service!
    }

ntf-event-user-limited =
    <b>⛔ Attention! Access suspended — VPN not working.</b>

    Your traffic is used up. { $is_trial ->
    [0] { $traffic_strategy ->
        [NO_RESET] Renew the subscription to reset traffic and continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also renew the subscription to reset traffic.
        }
    *[TRUE] { $traffic_strategy ->
        [NO_RESET] Subscribe to continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also subscribe to use the service without limits.
        }
    }

ntf-event-user-hwid-added =
    #EventUserHwid

    <b>🔅 Event: User added a new device!</b>

    { hdr-user }
    { frg-user-info }

    { hdr-hwid }
    { frg-user-hwid }

ntf-event-user-hwid-deleted =
    #EventUserHwid

    <b>🔅 Event: User removed a device!</b>

    { hdr-user }
    { frg-user-info }

    { hdr-hwid }
    { frg-user-hwid }

ntf-event-user-referral-attached =
    <b>🎉 You invited a friend!</b>
    
    <blockquote>
    User <b>{ $name }</b> joined using your invite link! To receive the reward, make sure they make a subscription purchase.
    </blockquote>

ntf-event-user-referral-reward =
    <b>💰 You have been rewarded!</b>
    
    <blockquote>
    User <b>{ $name }</b> made a payment. You received <b>{ $value } { $reward_type ->
    [POINTS] { $value -> 
        [one] point
        [few] points
        *[more] points 
        }
    [EXTRA_DAYS] extra { $value -> 
        [one] day
        [few] days
        *[more] days
        }
    *[OTHER] { $reward_type }
    }</b> to your subscription!
    </blockquote>

ntf-event-user-referral-reward-error =
    <b>❌ Failed to grant reward!</b>
    
    <blockquote>
    User <b>{ $name }</b> made a payment, but we could not credit your reward because you do not have a purchased subscription to which { $value } { $value ->
            [one] extra day
            [few] extra days
            *[more] extra days
        } could be added.
    
    <i>Buy a subscription to receive bonuses for invited friends!</i>
    </blockquote>


# Notifications
ntf-command-paysupport = 💸 <b>To request a refund, contact our support.</b>
ntf-command-help = 🆘 <b>Press the button below to contact support. We will help resolve your issue.</b>
ntf-channel-join-required = ❇️ Subscribe to our channel and receive <b>free days, promotions and news</b>! After subscribing press the "Confirm" button.
ntf-channel-join-required-left = ⚠️ You unsubscribed from our channel! Subscribe to be able to use the bot.
ntf-rules-accept-required = ⚠️ <b>Before using the service, please read and accept the <a href="{ $url }">Terms of Use</a>.</b>

ntf-double-click-confirm = <i>⚠️ Press again to confirm the action.</i>
ntf-channel-join-error = <i>⚠️ We do not see your subscription to the channel. Check that you have subscribed and try again.</i>
ntf-throttling-many-requests = <i>⚠️ You are sending too many requests, please wait a bit.</i>
ntf-squads-empty = <i>⚠️ Squads not found. Check their availability in the panel.</i>
ntf-invite-withdraw-points-error = ❌ You do not have enough points to perform the exchange.

ntf-connect-not-available =
    ⚠️ { $status ->
    [LIMITED]
    You have used all available traffic. { $is_trial ->
    [0] { $traffic_strategy ->
        [NO_RESET] Renew the subscription to reset traffic and continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also renew the subscription to reset traffic.
        }
    *[TRUE] { $traffic_strategy ->
        [NO_RESET] Subscribe to continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also subscribe to use the service without limits.
        }
    }
    [EXPIRED]  
    { $is_trial ->
    [0] Your subscription has expired. To continue using the service, renew or purchase a subscription.
    *[TRUE] Your free trial has ended. Subscribe to continue using the service!
    }
    *[OTHER] An error occurred while checking the status or your subscription was disabled. Contact support.
    }

ntf-user-not-found = <i>❌ User not found.</i>
ntf-user-transactions-empty = <i>❌ Transaction list is empty.</i>
ntf-user-subscription-empty = <i>❌ Current subscription not found.</i>
ntf-user-plans-empty = <i>❌ No available plans to grant.</i>
ntf-user-devices-empty = <i>❌ Device list is empty.</i>
ntf-user-invalid-number = <i>❌ Invalid number.</i>
ntf-user-allowed-plans-empty = <i>❌ No available plans to grant access.</i>
ntf-user-message-success = <i>✅ Message sent successfully.</i>
ntf-user-message-not-sent = <i>❌ Failed to send message.</i>
ntf-user-sync-already = <i>✅ Subscription data matches.</i>
ntf-user-sync-missing-data = <i>⚠️ Synchronization impossible. Subscription data is missing both in the panel and in the bot.</i>
ntf-user-sync-success = <i>✅ Subscription synchronization completed.</i>

ntf-user-invalid-expire-time = <i>❌ Cannot { $operation ->
    [ADD] extend the subscription by the specified number of days
    *[SUB] reduce the subscription by the specified number of days
    }.</i>

ntf-user-invalid-points = <i>❌ Cannot { $operation ->
    [ADD] add the specified number of points
    *[SUB] subtract the specified number of points
    }.</i>

ntf-referral-invalid-reward = <i>❌ Incorrect value.</i>

ntf-access-denied = <i>🚧 Bot is in maintenance mode, try again later.</i>
ntf-access-denied-registration = <i>❌ New user registration is disabled.</i>
ntf-access-denied-only-invited = <i>❌ New user registration is available only by invitation from another user.</i>
ntf-access-denied-purchasing = <i>🚧 Bot is in maintenance mode, you will receive a notification when the bot is available again.</i>
ntf-access-allowed = <i>❇️ All bot functionality is available again, thank you for waiting.</i>
ntf-access-id-saved = <i>✅ Channel/group ID saved successfully.</i>
ntf-access-link-saved = <i>✅ Channel/group link saved successfully.</i>
ntf-access-channel-invalid = <i>❌ Invalid channel/group link or ID.</i>

ntf-plan-invalid-name = <i>❌ Invalid name.</i>
ntf-plan-invalid-description = <i>❌ Invalid description.</i>
ntf-plan-invalid-tag = <i>❌ Invalid tag.</i>
ntf-plan-invalid-number = <i>❌ Invalid number.</i>
ntf-plan-trial-once-duration = <i>❌ Trial plan can have only one duration.</i>
ntf-plan-trial-already-exists = <i>❌ Trial plan already exists.</i>
ntf-plan-duration-already-exists = <i>❌ Such duration already exists.</i>
ntf-plan-duration-last = <i>❌ Cannot delete the last duration.</i>
ntf-plan-save-error = <i>❌ Error saving the plan.</i>
ntf-plan-name-already-exists = <i>❌ A plan with this name already exists.</i>
ntf-plan-invalid-user-id = <i>❌ Invalid user ID.</i>
ntf-plan-no-user-found = <i>❌ User not found.</i>
ntf-plan-user-already-allowed = <i>❌ User already added to the allowed list.</i>
ntf-plan-confirm-delete = <i>⚠️ Press again to delete.</i>
ntf-plan-updated-success = <i>✅ Plan updated successfully.</i>
ntf-plan-created-success = <i>✅ Plan created successfully.</i>
ntf-plan-deleted-success = <i>✅ Plan deleted successfully.</i>
ntf-plan-internal-squads-empty = <i>❌ Select at least one internal squad.</i>

ntf-gateway-not-configured = <i>❌ Payment gateway not configured.</i>
ntf-gateway-not-configurable = <i>❌ Payment gateway has no settings.</i>
ntf-gateway-field-wrong-value = <i>❌ Incorrect value.</i>
ntf-gateway-test-payment-created = <i>✅ <a href="{ $url }">Test payment</a> created successfully.</i>
ntf-gateway-test-payment-error = <i>❌ Error creating test payment.</i>
ntf-gateway-test-payment-confirmed = <i>✅ Test payment processed successfully.</i>

ntf-subscription-plans-not-available = <i>❌ No available plans.</i>
ntf-subscription-gateways-not-available = <i>❌ No available payment gateways.</i>
ntf-subscription-renew-plan-unavailable = <i>❌ Your plan is outdated and not available for renewal.</i>
ntf-subscription-payment-creation-failed = <i>❌ Error creating payment, try again later.</i>

ntf-broadcast-list-empty = <i>❌ Broadcast list is empty.</i>
ntf-broadcast-audience-not-available = <i>❌ No available users for the selected audience.</i>
ntf-broadcast-audience-not-active = <i>❌ No users with an ACTIVE subscription for this plan.</i>
ntf-broadcast-plans-not-available = <i>❌ No available plans.</i>
ntf-broadcast-empty-content = <i>❌ Content is empty.</i>
ntf-broadcast-wrong-content = <i>❌ Incorrect content.</i>
ntf-broadcast-content-saved = <i>✅ Message content saved successfully.</i>
ntf-broadcast-preview = { $content }
ntf-broadcast-not-cancelable = <i>❌ Broadcast cannot be canceled.</i>
ntf-broadcast-canceled = <i>✅ Broadcast canceled successfully.</i>
ntf-broadcast-deleting = <i>⚠️ Deleting all sent messages.</i>
ntf-broadcast-already-deleted = <i>❌ Broadcast is being deleted or already deleted.</i>

ntf-broadcast-deleted-success =
    ✅ Broadcast <code>{ $task_id }</code> deleted successfully.

    <blockquote>
    • <b>Total messages</b>: { $total_count }
    • <b>Deleted successfully</b>: { $deleted_count }
    • <b>Failed to delete</b>: { $failed_count }
    </blockquote>

ntf-trial-unavailable = <i>❌ Trial subscription temporarily unavailable.</i>

ntf-importer-not-file = <i>⚠️ Send the database as a file.</i>
ntf-importer-db-invalid = <i>❌ This file cannot be imported.</i>
ntf-importer-db-failed = <i>❌ Error importing the database.</i>
ntf-importer-exported-users-empty =  <i>❌ User list in the database is empty.</i>
ntf-importer-internal-squads-empty = <i>❌ Select at least one internal squad.</i>
ntf-importer-import-started = <i>✅ Users import started, please wait...</i>
ntf-importer-sync-started = <i>✅ Users synchronization started, please wait...</i>
ntf-importer-users-not-found = <i>❌ Could not find users to synchronize.</i>
ntf-importer-not-support = <i>⚠️ Full import from 3xui-shop temporarily unavailable. You can use import from 3X-UI panel!</i>