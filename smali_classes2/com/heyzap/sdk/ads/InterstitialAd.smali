.class public final Lcom/heyzap/sdk/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/ads/InterstitialAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static display(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->display(Landroid/app/Activity;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static display(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V

    .line 97
    return-void
.end method

.method static display(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->adsTimedOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "Ad display is being rate limited."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Lcom/heyzap/mediation/request/MediationRequest;

    sget-object v1, Lcom/heyzap/sdk/ads/InterstitialAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {v0, v1, p1, p0}, Lcom/heyzap/mediation/request/MediationRequest;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)V

    .line 109
    invoke-virtual {p2, v0}, Lcom/heyzap/mediation/MediationManager;->display(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/mediation/request/MediationRequest;

    goto :goto_0
.end method

.method public static fetch()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static fetch(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch(Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V

    .line 35
    return-void
.end method

.method static fetch(Ljava/lang/String;Lcom/heyzap/mediation/MediationManager;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/ads/InterstitialAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p1, v0, p0}, Lcom/heyzap/mediation/MediationManager;->fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->isAvailable(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/ads/InterstitialAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->isAvailable(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static setCampaignId(I)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public static setCreativeId(I)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public static setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->assertStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/ads/InterstitialAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTargetCreativeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
