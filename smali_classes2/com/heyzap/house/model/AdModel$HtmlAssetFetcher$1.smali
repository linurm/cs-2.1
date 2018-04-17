.class final Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;
.super Ljava/lang/Object;
.source "AdModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->fetch(Lcom/heyzap/house/model/AdModel;Lcom/heyzap/internal/GenericCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/heyzap/internal/GenericCallback;

.field final synthetic val$cssUrls:Ljava/util/List;

.field final synthetic val$imgUrls:Ljava/util/List;

.field final synthetic val$model:Lcom/heyzap/house/model/AdModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/heyzap/house/model/AdModel;Ljava/util/List;Lcom/heyzap/internal/GenericCallback;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$imgUrls:Ljava/util/List;

    iput-object p2, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    iput-object p3, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$cssUrls:Ljava/util/List;

    iput-object p4, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$callback:Lcom/heyzap/internal/GenericCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 529
    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$imgUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_0 .. :try_end_0} :catch_4

    .line 536
    :try_start_1
    iget-object v3, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    invoke-static {v0, v3}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->access$300(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 544
    :goto_1
    if-eqz v3, :cond_6

    .line 546
    :try_start_2
    iget-object v2, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    iget-object v7, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v7}, Lcom/heyzap/house/model/AdModel;->getHtmlData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/heyzap/house/model/AdModel;->setHtmlData(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    move v2, v0

    .line 548
    goto :goto_0

    .line 537
    :catch_0
    move-exception v3

    move-object v3, v4

    move v5, v1

    .line 542
    goto :goto_1

    .line 539
    :catch_1
    move-exception v3

    .line 541
    invoke-static {v3}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v3, v4

    move v5, v1

    goto :goto_1

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$cssUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_2 .. :try_end_2} :catch_4

    .line 551
    const/4 v3, 0x0

    .line 553
    :try_start_3
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    invoke-static {v3, v7}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->access$300(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v3

    .line 562
    :goto_4
    if-eqz v3, :cond_5

    .line 568
    :try_start_4
    iget-object v2, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    iget-object v7, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v7}, Lcom/heyzap/house/model/AdModel;->getHtmlData()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/heyzap/house/model/AdModel;->setHtmlData(Ljava/lang/String;)V

    move v0, v1

    :goto_5
    move v2, v0

    .line 570
    goto :goto_3

    .line 554
    :catch_2
    move-exception v3

    .line 556
    invoke-static {v3}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v3, v4

    move v5, v1

    .line 560
    goto :goto_4

    .line 557
    :catch_3
    move-exception v3

    .line 559
    invoke-static {v3}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v3, v4

    move v5, v1

    goto :goto_4

    .line 572
    :cond_1
    if-eqz v2, :cond_4

    .line 573
    if-eqz v5, :cond_3

    .line 574
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$402(Lcom/heyzap/house/model/AdModel;I)I

    .line 586
    :goto_6
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$callback:Lcom/heyzap/internal/GenericCallback;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$callback:Lcom/heyzap/internal/GenericCallback;

    iget-object v1, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/heyzap/internal/GenericCallback;->onCallback(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 595
    :cond_2
    :goto_7
    return-void

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$402(Lcom/heyzap/house/model/AdModel;I)I
    :try_end_4
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 589
    :catch_4
    move-exception v0

    .line 592
    const-string v1, "HtmlAssetFetcher interrupted"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 593
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 579
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$402(Lcom/heyzap/house/model/AdModel;I)I
    :try_end_5
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_2
.end method
