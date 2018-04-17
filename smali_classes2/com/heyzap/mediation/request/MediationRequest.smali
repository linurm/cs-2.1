.class public Lcom/heyzap/mediation/request/MediationRequest;
.super Ljava/lang/Object;
.source "MediationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/request/MediationRequest$RequestType;
    }
.end annotation


# instance fields
.field private final DEFAULT_TIMEOUT:Ljava/lang/Integer;

.field private bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

.field private final clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final closeListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Lcom/heyzap/common/lifecycle/DisplayResult;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private network:Ljava/lang/String;

.field private requestType:Lcom/heyzap/mediation/request/MediationRequest$RequestType;

.field private requestingActivity:Landroid/app/Activity;

.field private startedAt:J

.field private timeoutMilli:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/heyzap/mediation/request/MediationRequest;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/heyzap/mediation/request/MediationRequest;-><init>(Lcom/heyzap/mediation/request/MediationRequest$RequestType;Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/mediation/request/MediationRequest$RequestType;Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->DEFAULT_TIMEOUT:Ljava/lang/Integer;

    .line 27
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->DEFAULT_TIMEOUT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    .line 34
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 35
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 36
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 37
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 44
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest;->requestType:Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    .line 45
    iput-object p2, p0, Lcom/heyzap/mediation/request/MediationRequest;->requestingActivity:Landroid/app/Activity;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/EventStream;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    return-object v0
.end method


# virtual methods
.method public addDisplay(Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->bind(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream;Ljava/util/concurrent/Executor;)V

    .line 96
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->bind(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream;Ljava/util/concurrent/Executor;)V

    .line 97
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/heyzap/common/concurrency/FutureUtils;->bind(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V

    .line 98
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/heyzap/common/concurrency/FutureUtils;->bind(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V

    .line 99
    return-void
.end method

.method public addInternalBannerListener(Lcom/heyzap/common/banner/BannerListener;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/mediation/request/MediationRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$1;-><init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/common/banner/BannerListener;)V

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    .line 130
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/mediation/request/MediationRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$2;-><init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/common/banner/BannerListener;)V

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V

    .line 138
    return-void
.end method

.method public addStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/request/MediationRequest$3;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$3;-><init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 153
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/request/MediationRequest$4;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$4;-><init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 161
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/request/MediationRequest$5;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$5;-><init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    iget-object v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 167
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 226
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 227
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_2
    check-cast p1, Lcom/heyzap/mediation/request/MediationRequest;

    .line 229
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/heyzap/mediation/request/MediationRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getBannerOptions()Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingTtl()J
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    sub-long/2addr v0, v2

    .line 91
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->requestType:Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    return-object v0
.end method

.method public getRequestingActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->requestingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStartedAt()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestType()Lcom/heyzap/mediation/request/MediationRequest$RequestType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest$RequestType;->hashCode()I

    move-result v0

    return v0
.end method

.method public isStarted()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimedOut()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/heyzap/mediation/request/MediationRequest;->isStarted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-wide v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->startedAt:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->isExpired(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public sendDisplayFailed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1, p1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public setBannerOptions(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 255
    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 247
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest;->network:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTimeoutMilli(I)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest;->timeoutMilli:Ljava/lang/Integer;

    .line 75
    return-void
.end method
