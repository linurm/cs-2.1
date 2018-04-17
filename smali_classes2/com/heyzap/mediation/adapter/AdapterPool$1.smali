.class Lcom/heyzap/mediation/adapter/AdapterPool$1;
.super Ljava/lang/Object;
.source "AdapterPool.java"

# interfaces
.implements Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/adapter/AdapterPool;->setMediationMetricsCallbacks(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/adapter/AdapterPool;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->this$0:Lcom/heyzap/mediation/adapter/AdapterPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;

    invoke-direct {v0, p0, p2}, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool$1;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->this$0:Lcom/heyzap/mediation/adapter/AdapterPool;

    invoke-static {v1}, Lcom/heyzap/mediation/adapter/AdapterPool;->access$000(Lcom/heyzap/mediation/adapter/AdapterPool;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 132
    return-void
.end method
