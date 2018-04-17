.class public Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;
.super Ljava/lang/Object;
.source "StatusListenerMultiplexer.java"


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private incentiveListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private statusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public usesAudio:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->statusListeners:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->incentiveListeners:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->usesAudio:Z

    .line 38
    iput-object p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->statusListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->incentiveListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public addDisplay(Lcom/heyzap/common/lifecycle/AdDisplay;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$1;-><init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Lcom/heyzap/common/lifecycle/AdDisplay;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 89
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$2;

    invoke-direct {v1, p0, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$2;-><init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 101
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$3;

    invoke-direct {v1, p0, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$3;-><init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 110
    iget-object v0, p1, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$4;-><init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Lcom/heyzap/common/lifecycle/AdDisplay;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 123
    return-void
.end method

.method public addFetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Lcom/heyzap/common/concurrency/ListenableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Ljava/lang/String;",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/config/MediationConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/heyzap/common/concurrency/FutureUtils;->wrapTimeout(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v5

    .line 129
    new-instance v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;-><init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p3, v0, v1}, Lcom/heyzap/common/concurrency/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 158
    new-instance v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;

    invoke-direct {v0, p0, v5, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;-><init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v5, v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 180
    return-void
.end method

.method public sendDisplayFailed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->statusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 59
    invoke-interface {v0, p1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public setIncentiveListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iput-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->incentiveListeners:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iput-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->statusListeners:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setUsesAudio(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->usesAudio:Z

    .line 43
    return-void
.end method
