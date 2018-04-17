.class Lcom/heyzap/sdk/ads/MediationTestActivity$7;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;->makeSecondaryUI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

.field final synthetic val$adType:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->val$adType:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->val$adType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v1, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$000(Lcom/heyzap/sdk/ads/MediationTestActivity;Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 371
    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    if-eq v0, v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Lcom/heyzap/common/banner/BannerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Lcom/heyzap/common/banner/BannerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/common/banner/BannerWrapper;->getRealBannerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 378
    if-eqz v0, :cond_2

    .line 379
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Lcom/heyzap/common/banner/BannerWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/heyzap/common/banner/BannerWrapper;->getRealBannerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Lcom/heyzap/common/banner/BannerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/common/banner/BannerWrapper;->destroyBanner()Z

    .line 383
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$7;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->access$102(Lcom/heyzap/sdk/ads/MediationTestActivity;Lcom/heyzap/common/banner/BannerWrapper;)Lcom/heyzap/common/banner/BannerWrapper;

    goto :goto_0
.end method
