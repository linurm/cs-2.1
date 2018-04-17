.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->attemptNextFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 230
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 231
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    .line 234
    new-instance v7, Lcom/heyzap/internal/RetryManager;

    new-instance v8, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;

    invoke-direct {v8, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;)V

    new-instance v9, Lcom/heyzap/internal/RetryManager$DelayedSchedule;

    const/4 v10, 0x1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v9, v10, v11, v1}, Lcom/heyzap/internal/RetryManager$DelayedSchedule;-><init>(ILjava/util/concurrent/TimeUnit;Lcom/heyzap/internal/RetryManager$Schedule;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v7, v8, v9, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v7}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 251
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 260
    return-void
.end method
