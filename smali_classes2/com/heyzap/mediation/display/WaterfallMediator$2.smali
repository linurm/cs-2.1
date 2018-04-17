.class Lcom/heyzap/mediation/display/WaterfallMediator$2;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "WaterfallMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator;->mediate(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/concurrency/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/display/DisplayConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

.field final synthetic val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$request:Lcom/heyzap/mediation/request/MediationRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/request/MediationRequest;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p2}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 182
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    iget v1, p1, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/request/MediationRequest;->setTimeoutMilli(I)V

    .line 68
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest;->isTimedOut()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/heyzap/mediation/MediationResult;

    invoke-direct {v0}, Lcom/heyzap/mediation/MediationResult;-><init>()V

    .line 70
    const-string v1, "Display timed out"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/MediationResult;->setError(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-boolean v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->sortNetworksOnScore:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    new-instance v3, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;

    invoke-direct {v3, p0}, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;)V

    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    :cond_2
    iget-object v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    .line 99
    iget-object v4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v4}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$000(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v4

    iget-object v5, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v6, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v4, v5, v6}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v4

    .line 100
    if-eqz v4, :cond_4

    iget-object v5, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getAdUnitsForCreativeType(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v5

    iget-object v6, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v6}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    :cond_4
    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getNetwork()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getNetwork()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    :cond_5
    if-nez v4, :cond_6

    .line 110
    new-instance v5, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V

    .line 111
    const-string v0, "Network not on board."

    invoke-virtual {v5, v0}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V

    .line 112
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_6
    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isAdUnitCapable(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 117
    new-instance v5, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V

    .line 118
    const-string v0, "Network not capable of ad unit"

    invoke-virtual {v5, v0}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V

    .line 119
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_7
    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v5

    sget-object v6, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v5}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$100(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    move-result-object v5

    iget v6, p1, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoInterval:I

    invoke-virtual {v5, v6}, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->interstitialCooldownExpired(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p1, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoEnabled:Z

    if-nez v5, :cond_9

    .line 127
    :cond_8
    new-instance v5, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V

    .line 128
    const-string v0, "Interstitial rate limited"

    invoke-virtual {v5, v0}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V

    .line 129
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 133
    :cond_9
    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v5

    .line 135
    new-instance v6, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    invoke-direct {v6, v5, v4, v0}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v5}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    :try_start_0
    invoke-virtual {v5}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v4, p1, v2}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$200(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 150
    :cond_a
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 151
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    .line 152
    iget-object v4, v0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v5, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;

    iget-object v6, v0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {v5, p0, v6, v0, v1}, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v0}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$300(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 173
    :cond_b
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v0}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$300(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v3}, Lcom/heyzap/mediation/request/MediationRequest;->getRemainingTtl()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0, v4, v5, v3}, Lcom/heyzap/common/concurrency/FutureUtils;->wrapTimeout(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/display/WaterfallMediator$2$3;

    invoke-direct {v1, p0, p1, v2}, Lcom/heyzap/mediation/display/WaterfallMediator$2$3;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)V

    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v2}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$300(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lcom/heyzap/mediation/display/DisplayConfig;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/display/WaterfallMediator$2;->run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V

    return-void
.end method
