.class Lcom/heyzap/sdk/ads/BannerAdView$3;
.super Ljava/lang/Object;
.source "BannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/BannerAdView;->onLoadedHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/BannerAdView;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$500(Lcom/heyzap/sdk/ads/BannerAdView;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$500(Lcom/heyzap/sdk/ads/BannerAdView;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;->onAdLoaded(Lcom/heyzap/sdk/ads/BannerAdView;)V

    .line 211
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$500(Lcom/heyzap/sdk/ads/BannerAdView;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$700(Lcom/heyzap/sdk/ads/BannerAdView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$700(Lcom/heyzap/sdk/ads/BannerAdView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/heyzap/sdk/ads/BannerAdView;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/heyzap/sdk/ads/BannerAdView$3;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 224
    :catch_2
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 226
    :catch_3
    move-exception v0

    .line 227
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
