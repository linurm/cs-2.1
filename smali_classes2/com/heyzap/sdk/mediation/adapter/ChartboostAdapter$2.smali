.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isDebug(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 170
    :goto_0
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setImpressionsUseActivities(Z)V

    .line 173
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 174
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 175
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 176
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 178
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1400(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/ContextReference;->addActivityUpdateListener(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)Z

    .line 187
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "initialized"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 190
    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    goto :goto_0
.end method
