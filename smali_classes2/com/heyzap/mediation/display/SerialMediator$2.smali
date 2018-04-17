.class Lcom/heyzap/mediation/display/SerialMediator$2;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "SerialMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/SerialMediator;->mediate(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/concurrency/ListenableFuture;
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
.field final synthetic this$0:Lcom/heyzap/mediation/display/SerialMediator;

.field final synthetic val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$request:Lcom/heyzap/mediation/request/MediationRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/SerialMediator;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/request/MediationRequest;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->this$0:Lcom/heyzap/mediation/display/SerialMediator;

    iput-object p3, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p4, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V
    .locals 13

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p2}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 132
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v11, Lcom/heyzap/mediation/MediationResult;

    invoke-direct {v11}, Lcom/heyzap/mediation/MediationResult;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->id:Ljava/lang/String;

    iput-object v0, v11, Lcom/heyzap/mediation/MediationResult;->id:Ljava/lang/String;

    .line 65
    const/4 v7, 0x0

    .line 67
    iget-object v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    .line 69
    iget-object v0, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->this$0:Lcom/heyzap/mediation/display/SerialMediator;

    invoke-static {v0}, Lcom/heyzap/mediation/display/SerialMediator;->access$000(Lcom/heyzap/mediation/display/SerialMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v0

    iget-object v1, v9, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isAdUnitCapable(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getNetwork()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SerialMediator trying adapter.show()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v9, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 86
    const/4 v10, 0x0

    .line 88
    new-instance v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    invoke-direct {v8, v1, v0, v9}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;-><init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V

    .line 89
    const/4 v1, 0x0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0, v2, v11}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/heyzap/common/concurrency/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    .line 94
    iget-boolean v2, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    if-eqz v2, :cond_4

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SerialMediator displayResult.success"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, v9, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 96
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v6}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v0, 0x1

    move v10, v0

    .line 112
    :goto_2
    new-instance v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v1, v1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v2, v2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    iget-object v3, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v5, v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v8, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v8, v8, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/MediationResult$NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/common/lifecycle/FetchResult;ILjava/util/Collection;)V

    .line 114
    iget-object v1, v11, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    if-eqz v10, :cond_6

    .line 117
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SerialMediator SUCCESS! BREAKING!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v9, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 118
    iput-object v0, v11, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    .line 119
    iget-object v0, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, v11}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    const-string v0, "SerialMediator no network worked"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/heyzap/mediation/display/SerialMediator$2;->val$mediationResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, v11}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 99
    :cond_4
    :try_start_1
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-object v2, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->errorMessage:Ljava/lang/String;

    invoke-direct {v6, v2, v0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v10, v1

    goto :goto_2

    .line 112
    :cond_5
    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v4

    goto :goto_3

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SerialMediator InterruptedException"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 104
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v1, "exception"

    invoke-direct {v6, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    new-instance v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v1, v1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v2, v2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    iget-object v3, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_4
    iget-object v5, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v5, v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v8, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v8, v8, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/MediationResult$NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/common/lifecycle/FetchResult;ILjava/util/Collection;)V

    .line 114
    iget-object v1, v11, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 126
    goto/16 :goto_1

    .line 112
    :cond_7
    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v4

    goto :goto_4

    .line 105
    :catch_1
    move-exception v0

    .line 106
    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SerialMediator timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, v9, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 107
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->TIMEOUT:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v1, "timed out"

    invoke-direct {v6, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    new-instance v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v1, v1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v2, v2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    iget-object v3, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    :goto_6
    iget-object v5, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v5, v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v8, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v8, v8, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/MediationResult$NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/common/lifecycle/FetchResult;ILjava/util/Collection;)V

    .line 114
    iget-object v1, v11, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 112
    :cond_8
    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v4

    goto :goto_6

    .line 108
    :catch_2
    move-exception v0

    .line 109
    const/4 v1, 0x2

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SerialMediator ExecutionException"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 110
    new-instance v6, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v1, "exception"

    invoke-direct {v6, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    new-instance v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v1, v1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v2, v2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    iget-object v3, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :goto_7
    iget-object v5, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v5, v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v8, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v8, v8, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/MediationResult$NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/common/lifecycle/FetchResult;ILjava/util/Collection;)V

    .line 114
    iget-object v1, v11, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 112
    :cond_9
    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v4

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v9, v0

    new-instance v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v1, v1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v2, v2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    iget-object v3, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v4, :cond_a

    const/4 v4, 0x0

    :goto_8
    iget-object v5, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v5, v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v6, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v8, v6, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    move-object v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/MediationResult$NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/common/lifecycle/FetchResult;ILjava/util/Collection;)V

    .line 114
    iget-object v1, v11, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    throw v9

    .line 112
    :cond_a
    iget-object v4, v8, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v4

    goto :goto_8
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/heyzap/mediation/display/DisplayConfig;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/display/SerialMediator$2;->run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V

    return-void
.end method
