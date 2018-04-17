.class Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mHasAlreadyRegisteredClick:Z

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private publisherId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->publisherId:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;

    sget-object v1, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    invoke-direct {v0, p2, v1}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 73
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 102
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->context:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const-string v0, "mopub"

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->mediator:Ljava/lang/String;

    .line 83
    const-string v0, "publisher_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    const-string v1, "publisher_id"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    if-eqz v1, :cond_3

    .line 87
    iput-object v1, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->publisherId:Ljava/lang/String;

    .line 92
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->publisherId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->publisherId:Ljava/lang/String;

    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x11

    invoke-static {v0, p1, v1}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 100
    :cond_2
    :goto_2
    invoke-static {p0}, Lcom/heyzap/sdk/ads/InterstitialAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 101
    invoke-static {}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch()V

    goto :goto_0

    .line 88
    :cond_3
    if-eqz v0, :cond_1

    .line 89
    iput-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->publisherId:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_4
    const-string v0, "Heyzap not enabled. Could not find publisher_id in either the local or server extras."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_2
.end method

.method public onAudioFinished()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onAudioStarted()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    const-string v0, "Heyzap interstitial ad loaded successfully."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->debug(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 151
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    const-string v0, "Heyzap interstitial ad clicked."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->debug(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 133
    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, "Heyzap interstitial ad failed to load."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->debug(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 157
    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    const-string v0, "Heyzap interstitial ad failed to show."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->debug(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 145
    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    const-string v0, "Heyzap interstitial ad dismissed."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->debug(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 139
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 116
    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    const-string v0, "Showing Heyzap interstitial ad."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->debug(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 122
    return-void
.end method

.method protected showInterstitial()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/heyzap/sdk/ads/InterstitialAd;->isAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->display(Landroid/app/Activity;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "Tried to show a Heyzap interstitial ad before it finished loading. Please try again."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
