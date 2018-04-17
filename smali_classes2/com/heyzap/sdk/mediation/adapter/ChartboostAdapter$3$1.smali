.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 239
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 240
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    .line 241
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v1, v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1800(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 243
    new-instance v7, Lcom/heyzap/internal/RetryManager;

    new-instance v8, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;

    invoke-direct {v8, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v7, v8, v1, v2}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v7}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 255
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 264
    return-void
.end method
