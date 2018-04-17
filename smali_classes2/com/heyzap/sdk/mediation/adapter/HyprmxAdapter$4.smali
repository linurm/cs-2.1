.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;
.super Ljava/lang/Object;
.source "HyprmxAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

.field final synthetic val$adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

.field final synthetic val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 222
    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v3, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;-><init>(Landroid/app/Activity;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    .line 224
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 225
    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    :try_start_0
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->success:Z

    if-nez v2, :cond_3

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v2, "Ad not ready"

    invoke-direct {v1, v2}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 237
    :cond_3
    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$6;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    iget-object v4, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v4}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 242
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v1, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v3, "Unsupported ad unit"

    invoke-direct {v2, v3}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 245
    :goto_2
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$4;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$000(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    goto :goto_1

    .line 239
    :pswitch_0
    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->ad:Lcom/hyprmx/android/sdk/HyprMXPresentation;

    invoke-virtual {v1, v3}, Lcom/hyprmx/android/sdk/HyprMXPresentation;->show(Landroid/content/Context;)V

    goto :goto_2

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
