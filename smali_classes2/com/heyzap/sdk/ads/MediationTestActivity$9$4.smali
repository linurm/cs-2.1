.class Lcom/heyzap/sdk/ads/MediationTestActivity$9$4;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;

.field final synthetic val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field final synthetic val$display:Lcom/heyzap/common/lifecycle/AdDisplay;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$9;Lcom/heyzap/common/lifecycle/AdDisplay;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$4;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$4;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    iput-object p3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$4;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 482
    const/4 v1, 0x0

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$4;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    :goto_0
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$4;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_0

    .line 492
    const-string v1, "Incentive Result Received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$9$4;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$9;

    iget-object v1, v1, Lcom/heyzap/sdk/ads/MediationTestActivity$9;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 495
    :cond_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    const-string v2, "Incentive Listener"

    invoke-static {v2, v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 489
    goto :goto_0

    .line 487
    :catch_1
    move-exception v0

    .line 488
    const-string v2, "Incentive Listener"

    invoke-static {v2, v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
