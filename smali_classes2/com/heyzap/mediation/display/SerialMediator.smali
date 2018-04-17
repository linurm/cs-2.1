.class public Lcom/heyzap/mediation/display/SerialMediator;
.super Ljava/lang/Object;
.source "SerialMediator.java"

# interfaces
.implements Lcom/heyzap/mediation/display/Mediator;


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private final displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

.field private final filterManager:Lcom/heyzap/mediation/filters/FilterManager;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Lcom/heyzap/mediation/filters/FilterManager;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/heyzap/mediation/display/SerialMediator;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/filters/FilterManager;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/filters/FilterManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/heyzap/mediation/display/SerialMediator;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 34
    iput-object p2, p0, Lcom/heyzap/mediation/display/SerialMediator;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    .line 35
    iput-object p3, p0, Lcom/heyzap/mediation/display/SerialMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    iput-object p4, p0, Lcom/heyzap/mediation/display/SerialMediator;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/display/SerialMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/heyzap/mediation/display/SerialMediator;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method


# virtual methods
.method public mediate(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/concurrency/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/request/MediationRequest;",
            ")",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/MediationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/heyzap/mediation/display/SerialMediator;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    invoke-interface {v1}, Lcom/heyzap/mediation/display/DisplayConfigLoader;->consume()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/heyzap/mediation/display/SerialMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRemainingTtl()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/heyzap/common/concurrency/FutureUtils;->addTimeout(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    .line 46
    new-instance v2, Lcom/heyzap/mediation/display/SerialMediator$1;

    invoke-direct {v2, p0, v1}, Lcom/heyzap/mediation/display/SerialMediator$1;-><init>(Lcom/heyzap/mediation/display/SerialMediator;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v3, p0, Lcom/heyzap/mediation/display/SerialMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 54
    new-instance v2, Lcom/heyzap/mediation/display/SerialMediator$2;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/heyzap/mediation/display/SerialMediator$2;-><init>(Lcom/heyzap/mediation/display/SerialMediator;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/request/MediationRequest;)V

    iget-object v3, p0, Lcom/heyzap/mediation/display/SerialMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 135
    return-object v0
.end method
