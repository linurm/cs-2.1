.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "HyprmxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 179
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->fetch(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/heyzap/common/concurrency/FutureUtils;->bind(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V

    .line 181
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 194
    return-void
.end method
