.class Lcom/heyzap/sdk/ads/MediationTestActivity$1;
.super Ljava/util/TreeMap;
.source "MediationTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V
    .locals 3

    .prologue
    .line 72
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 74
    const-string v0, "adcolony"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "AdColony"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "admob"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "AdMob"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "applovin"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "AppLovin"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "chartboost"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Chartboost"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "facebook"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Facebook Audience Network"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "heyzap"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Heyzap"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "heyzap_video"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Heyzap Video"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "unityads"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "UnityAds"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "vungle"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Vungle"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "hyprmx"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "HyprMX"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "heyzap_exchange"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Heyzap Exchange"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method
