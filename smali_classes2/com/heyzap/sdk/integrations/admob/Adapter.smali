.class public Lcom/heyzap/sdk/integrations/admob/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/integrations/admob/Adapter$1;,
        Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/heyzap/sdk/integrations/admob/AdapterExtras;",
        "Lcom/heyzap/sdk/integrations/admob/ServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/customevent/CustomEventInterstitial;"
    }
.end annotation


# static fields
.field static FLAGS:I

.field static LOG_LABEL:Ljava/lang/String;

.field static MEDIATOR_LABEL:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

.field private heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

.field private mediationInterstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x11

    sput v0, Lcom/heyzap/sdk/integrations/admob/Adapter;->FLAGS:I

    .line 34
    const-string v0, "admob"

    sput-object v0, Lcom/heyzap/sdk/integrations/admob/Adapter;->MEDIATOR_LABEL:Ljava/lang/String;

    .line 35
    const-string v0, "AdMob"

    sput-object v0, Lcom/heyzap/sdk/integrations/admob/Adapter;->LOG_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->mediationInterstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/integrations/admob/Adapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private startHeyzapIfNeeded(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    const-string v0, "WARNING: Heyzap does not have a publisher ID. The parameters need are \'publisher_id\'."

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->error(Ljava/lang/String;)V

    .line 139
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    if-nez v0, :cond_3

    .line 143
    new-instance v0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;-><init>(Lcom/heyzap/sdk/integrations/admob/Adapter;Lcom/heyzap/sdk/integrations/admob/Adapter$1;)V

    iput-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    .line 147
    :cond_3
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->activity:Landroid/app/Activity;

    sget v1, Lcom/heyzap/sdk/integrations/admob/Adapter;->FLAGS:I

    invoke-static {p1, v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 149
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 150
    sget-object v0, Lcom/heyzap/sdk/integrations/admob/Adapter;->MEDIATOR_LABEL:Ljava/lang/String;

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->mediator:Ljava/lang/String;

    .line 155
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/heyzap/sdk/integrations/admob/AdapterExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-class v0, Lcom/heyzap/sdk/integrations/admob/AdapterExtras;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/heyzap/sdk/integrations/admob/ServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-class v0, Lcom/heyzap/sdk/integrations/admob/ServerParameters;

    return-object v0
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    iput-object p2, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 71
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->activity:Landroid/app/Activity;

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 77
    :cond_0
    const-string v0, "publisher_id"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->startHeyzapIfNeeded(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6

    .prologue
    .line 24
    move-object v3, p3

    check-cast v3, Lcom/heyzap/sdk/integrations/admob/ServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/heyzap/sdk/integrations/admob/AdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/sdk/integrations/admob/Adapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/heyzap/sdk/integrations/admob/ServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/heyzap/sdk/integrations/admob/AdapterExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/heyzap/sdk/integrations/admob/ServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/heyzap/sdk/integrations/admob/AdapterExtras;)V
    .locals 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->mediationInterstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 53
    iput-object p2, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->activity:Landroid/app/Activity;

    .line 56
    iget-object v0, p3, Lcom/heyzap/sdk/integrations/admob/ServerParameters;->publisherId:Ljava/lang/String;

    .line 57
    invoke-direct {p0, v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->startHeyzapIfNeeded(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->mediationInterstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 93
    iput-object p2, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->activity:Landroid/app/Activity;

    .line 94
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "publisher_id"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 101
    :goto_0
    sget v0, Lcom/heyzap/sdk/integrations/admob/Adapter;->FLAGS:I

    invoke-static {p4, p2, v0}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 103
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    .line 104
    sget-object v0, Lcom/heyzap/sdk/integrations/admob/Adapter;->MEDIATOR_LABEL:Ljava/lang/String;

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->mediator:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;-><init>(Lcom/heyzap/sdk/integrations/admob/Adapter;Lcom/heyzap/sdk/integrations/admob/Adapter$1;)V

    iput-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    .line 108
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->heyzapListener:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 111
    :cond_1
    invoke-static {}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch()V

    .line 115
    :goto_1
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_1
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->display(Landroid/app/Activity;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->mediationInterstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->mediationInterstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter;->customEventInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
