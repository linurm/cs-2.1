.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1$1;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;

.field final synthetic val$wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    sget-object v1, Lcom/heyzap/common/lifecycle/FetchResult;->NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4$1;->retry()V

    .line 257
    :cond_0
    return-void
.end method
