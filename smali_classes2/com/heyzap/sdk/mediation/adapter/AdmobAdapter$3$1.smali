.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 185
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetch()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    move-result-object v0

    .line 186
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 195
    return-void
.end method
