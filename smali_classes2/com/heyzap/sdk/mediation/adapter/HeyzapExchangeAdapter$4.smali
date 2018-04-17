.class Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;
.super Ljava/lang/Object;
.source "HeyzapExchangeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

.field final synthetic val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 240
    new-instance v0, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;

    invoke-direct {v7, p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$1000(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v0}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 273
    return-void
.end method
