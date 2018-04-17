.class Lcom/heyzap/sdk/ads/MediationTestActivity$5;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$destroyBannerButton:Landroid/widget/Button;

.field final synthetic val$fetchButton:Landroid/widget/Button;

.field final synthetic val$loadBannerButton:Landroid/widget/Button;

.field final synthetic val$showButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$fetchButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$showButton:Landroid/widget/Button;

    iput-object p4, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$loadBannerButton:Landroid/widget/Button;

    iput-object p5, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$destroyBannerButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 269
    if-eqz p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$fetchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$showButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$loadBannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$destroyBannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$fetchButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$showButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$loadBannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$5;->val$destroyBannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
