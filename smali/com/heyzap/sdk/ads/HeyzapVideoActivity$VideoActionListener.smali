.class Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;
.super Ljava/lang/Object;
.source "HeyzapVideoActivity.java"

# interfaces
.implements Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Lcom/heyzap/sdk/ads/HeyzapVideoActivity$1;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;-><init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    return-void
.end method


# virtual methods
.method public click()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onClick()V

    .line 265
    return-void
.end method

.method public clickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    invoke-static {p1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public completed()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "(COMPLETE VIDEO)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$502(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 278
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->dismiss()V

    .line 279
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$300(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    .line 253
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 255
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$400(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->postRollInterstitial:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onHide()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->switchToView(I)V

    goto :goto_0
.end method

.method public error()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/heyzap/internal/Logger;->trace()V

    .line 286
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$300(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    .line 287
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 289
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isApplicationOnTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->hide()V

    .line 300
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$600(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->postRollInterstitial:Z

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$700(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->onInterstitialFallback()V

    .line 296
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->switchToView(I)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onHide()V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 247
    const-string v0, "(FINISH VIDEO)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->dismiss()V

    .line 249
    return-void
.end method

.method public progress(IF)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "(STARTING VIDEO)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 236
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->access$200(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    .line 237
    return-void
.end method

.method public skip(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 241
    const-string v0, "(SKIP VIDEO)"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;->dismiss()V

    .line 243
    return-void
.end method
