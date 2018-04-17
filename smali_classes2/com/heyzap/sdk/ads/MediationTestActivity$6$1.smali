.class Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Lcom/heyzap/common/lifecycle/EventStream$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
        "<",
        "Lcom/heyzap/common/lifecycle/DisplayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$6;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/heyzap/common/lifecycle/DisplayResult;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-boolean v0, p1, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v1, p1, Lcom/heyzap/common/lifecycle/DisplayResult;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    invoke-static {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$102(Lcom/heyzap/sdk/ads/MediationTestActivity;Lcom/heyzap/common/banner/BannerWrapper;)Lcom/heyzap/common/banner/BannerWrapper;

    .line 325
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Lcom/heyzap/common/banner/BannerWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "Display Attempt Failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 351
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Lcom/heyzap/common/banner/BannerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/common/banner/BannerWrapper;->getRealBannerView()Landroid/view/View;

    move-result-object v1

    .line 332
    if-nez v1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "Display Attempt Failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v3, v3, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 338
    const/16 v0, 0x50

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 340
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 341
    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/sdk/ads/MediationTestActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$6;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "Display Attempt Failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 319
    check-cast p1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/MediationTestActivity$6$1;->onEvent(Lcom/heyzap/common/lifecycle/DisplayResult;)V

    return-void
.end method
