.class Lcom/heyzap/sdk/ads/BannerAdView$4;
.super Ljava/lang/Object;
.source "BannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/BannerAdView;->onErrorHandler(Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/BannerAdView;

.field final synthetic val$error:Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->val$error:Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$500(Lcom/heyzap/sdk/ads/BannerAdView;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$500(Lcom/heyzap/sdk/ads/BannerAdView;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    iget-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->val$error:Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;

    invoke-interface {v0, v1, v2}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;->onAdError(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V

    .line 242
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$500(Lcom/heyzap/sdk/ads/BannerAdView;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$800(Lcom/heyzap/sdk/ads/BannerAdView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$800(Lcom/heyzap/sdk/ads/BannerAdView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/heyzap/sdk/ads/BannerAdView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/heyzap/sdk/ads/BannerAdView$4;->val$error:Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    :catch_1
    move-exception v0

    .line 254
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    :catch_2
    move-exception v0

    .line 256
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 257
    :catch_3
    move-exception v0

    .line 258
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
