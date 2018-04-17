.class public Lcom/heyzap/house/request/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field public static DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

.field public static DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# instance fields
.field private adModel:Lcom/heyzap/house/model/AdModel;

.field private auctionType:Lcom/heyzap/internal/Constants$AuctionType;

.field private campaignId:Ljava/lang/Integer;

.field private cancelled:Z

.field private creativeId:Ljava/lang/Integer;

.field private creativeTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private debuggable:Ljava/lang/Boolean;

.field private incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

.field private isImmediate:Z

.field private statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

.field private tag:Ljava/lang/String;

.field private userIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/heyzap/house/request/AdRequest$1;

    invoke-direct {v0}, Lcom/heyzap/house/request/AdRequest$1;-><init>()V

    sput-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 40
    new-instance v0, Lcom/heyzap/house/request/AdRequest$2;

    invoke-direct {v0}, Lcom/heyzap/house/request/AdRequest$2;-><init>()V

    sput-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->debuggable:Ljava/lang/Boolean;

    .line 52
    iput-object v2, p0, Lcom/heyzap/house/request/AdRequest;->userIdentifier:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 55
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    .line 57
    iput-object v2, p0, Lcom/heyzap/house/request/AdRequest;->auctionType:Lcom/heyzap/internal/Constants$AuctionType;

    .line 58
    iput-boolean v1, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    .line 59
    iput-boolean v1, p0, Lcom/heyzap/house/request/AdRequest;->cancelled:Z

    .line 60
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->creativeTypes:Ljava/util/EnumSet;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->debug:Ljava/util/HashMap;

    .line 65
    iput-object p2, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->creativeTypes:Ljava/util/EnumSet;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/house/request/AdRequest;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->cancelled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/heyzap/house/request/AdRequest;Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/heyzap/house/request/AdRequest;->setAdModel(Lcom/heyzap/house/model/AdModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/house/request/AdRequest;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    return v0
.end method

.method private setAdModel(Lcom/heyzap/house/model/AdModel;)V
    .locals 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    .line 115
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/heyzap/house/model/AdModel;->setAdRequest(Lcom/heyzap/house/request/AdRequest;)V

    .line 116
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->isReady()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onAvailable(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method private static startActivity(Landroid/app/Activity;Lcom/heyzap/house/model/AdModel;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/heyzap/house/request/AdRequest$4;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/house/request/AdRequest$4;-><init>(Lcom/heyzap/house/model/AdModel;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->cancelled:Z

    .line 254
    return-void
.end method

.method public fetch(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 130
    invoke-static {p0}, Lcom/heyzap/house/request/FetchRequest$Factory;->build(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/house/request/FetchRequest;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/heyzap/house/request/AdRequest$3;

    invoke-direct {v1, p0}, Lcom/heyzap/house/request/AdRequest$3;-><init>(Lcom/heyzap/house/request/AdRequest;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setResponseHandler(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V

    .line 157
    invoke-virtual {v0, p1}, Lcom/heyzap/house/request/FetchRequest;->execute(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public getAdModel()Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method public getAuctionType()Lcom/heyzap/internal/Constants$AuctionType;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->auctionType:Lcom/heyzap/internal/Constants$AuctionType;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->creativeTypes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getDebuggable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->debuggable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOnIncentiveListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    return-object v0
.end method

.method public getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isImmediate()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    return v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->isReady()Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setAuctionType(Lcom/heyzap/internal/Constants$AuctionType;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->auctionType:Lcom/heyzap/internal/Constants$AuctionType;

    .line 230
    return-void
.end method

.method public setCampaignId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->campaignId:Ljava/lang/Integer;

    .line 107
    return-void
.end method

.method public setCreativeId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->creativeId:Ljava/lang/Integer;

    .line 103
    return-void
.end method

.method public setDebugable(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->debuggable:Ljava/lang/Boolean;

    .line 99
    return-void
.end method

.method public setIsImmediate(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/heyzap/house/request/AdRequest;->isImmediate:Z

    .line 95
    return-void
.end method

.method public setOnIncentiveListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 1

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_INCENTIVE_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->incentiveListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    goto :goto_0
.end method

.method public setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 1

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/heyzap/house/request/AdRequest;->DEFAULT_STATUS_LISTENER:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iput-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Lcom/heyzap/house/model/AdModel;->setTag(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest;->userIdentifier:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    invoke-static {p1}, Lcom/heyzap/common/net/Connectivity;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    const-string v0, "NO CONNECTIVITY"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iget-object v1, p0, Lcom/heyzap/house/request/AdRequest;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->isReady()Ljava/lang/Boolean;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p2, v1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 180
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/heyzap/house/model/AdModel;->setAdRequest(Lcom/heyzap/house/request/AdRequest;)V

    .line 182
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p2}, Lcom/heyzap/house/model/AdModel;->setAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 183
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p3}, Lcom/heyzap/house/model/AdModel;->setTag(Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Lcom/heyzap/house/request/FetchRequest;->updateOrientation(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getFormat()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->adModel:Lcom/heyzap/house/model/AdModel;

    invoke-static {p1, v0}, Lcom/heyzap/house/request/AdRequest;->startActivity(Landroid/app/Activity;Lcom/heyzap/house/model/AdModel;)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest;->statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    invoke-interface {v0, p3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V

    goto :goto_0
.end method
