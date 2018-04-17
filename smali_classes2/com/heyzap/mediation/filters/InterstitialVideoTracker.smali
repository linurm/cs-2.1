.class public Lcom/heyzap/mediation/filters/InterstitialVideoTracker;
.super Ljava/lang/Object;
.source "InterstitialVideoTracker.java"


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private lastInterstitialVideoAt:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->lastInterstitialVideoAt:J

    .line 22
    iput-object p1, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/heyzap/mediation/filters/InterstitialVideoTracker;J)J
    .locals 1

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->lastInterstitialVideoAt:J

    return-wide p1
.end method


# virtual methods
.method public addDisplay(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult$NetworkResult;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 3

    .prologue
    .line 31
    iget-boolean v0, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->isVideo:Z

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/filters/InterstitialVideoTracker$1;

    invoke-direct {v1, p0, p3}, Lcom/heyzap/mediation/filters/InterstitialVideoTracker$1;-><init>(Lcom/heyzap/mediation/filters/InterstitialVideoTracker;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    iget-object v2, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public interstitialCooldownExpired(I)Z
    .locals 4

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->lastInterstitialVideoAt:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
