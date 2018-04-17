.class public Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "AdColonyInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
        ">;",
        "Lcom/jirbo/adcolony/AdColonyAdListener;"
    }
.end annotation


# static fields
.field private static final ERROR_NOT_SHOWN:Ljava/lang/String; = "Not Shown"

.field private static final ERROR_NO_FILL:Ljava/lang/String; = "No Fill"

.field private static final ERROR_NO_VIDEO_AVAILABLE:Ljava/lang/String; = "No Video Available"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private adAvailabilityForZoneId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private currentZoneId:Ljava/lang/String;

.field private hasAdStarted:Z

.field private interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

.field private interstitialZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isInterstitialAvailable:Z

.field private zoneBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "Interstitial Adapter"

    sput-object v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "interstitialZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 44
    iput-object p2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialZoneIds:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->adAvailabilityForZoneId:Ljava/util/HashMap;

    .line 47
    iput-boolean v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->hasAdStarted:Z

    .line 48
    iput-boolean v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->isInterstitialAvailable:Z

    .line 49
    return-void
.end method

.method private getFirstNotBlacklistedZoneId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    iget-object v2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialZoneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, "zoneId":Ljava/lang/String;
    iget-object v2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    .end local v1    # "zoneId":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getZoneId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getContextData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "tpn_placement_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "placementId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getFirstNotBlacklistedZoneId()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "zoneId":Ljava/lang/String;
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    sget-object v2, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "No placement id found in context data, falling back to configs."

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v1    # "zoneId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 129
    .restart local v1    # "zoneId":Ljava/lang/String;
    :cond_0
    const-string v2, "Error: no placement id"

    invoke-virtual {p0, v2}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Ad request failed because there is no placement id to use in the ad request."

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    goto :goto_0

    .end local v1    # "zoneId":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 135
    goto :goto_0
.end method

.method private initInterstitial()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialZoneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getZoneId()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "tZoneId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got zone id for interstitials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    .line 113
    new-instance v1, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v1, v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->hasAdStarted:Z

    .line 67
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->initInterstitial()V

    .line 69
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->adAvailabilityForZoneId:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->adAvailabilityForZoneId:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdAvailable()V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdNotAvailable()V

    goto :goto_0
.end method

.method public maintainAvailability(ZLjava/lang/String;)V
    .locals 2
    .param p1, "available"    # Z
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->isInterstitialAvailable:Z

    .line 150
    if-nez p1, :cond_0

    .line 151
    sget-object v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Ad is not available"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->adAvailabilityForZoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->noFill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "No Fill"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    .line 94
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 95
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->notShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->hasAdStarted:Z

    if-nez v0, :cond_1

    .line 89
    const-string v0, "Not Shown"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialClosed()V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialShown()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->hasAdStarted:Z

    .line 81
    return-void
.end method

.method protected show(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->isInterstitialAvailable:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "interstitialVideo is null"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    const-string v0, "No Video Available"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0
.end method
