.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->attemptNextFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 245
    new-instance v0, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;

    invoke-direct {v7, p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v0}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 261
    return-void
.end method
