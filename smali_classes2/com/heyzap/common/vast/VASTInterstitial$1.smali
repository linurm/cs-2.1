.class Lcom/heyzap/common/vast/VASTInterstitial$1;
.super Ljava/lang/Object;
.source "VASTInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/vast/VASTInterstitial;->loadVideoWithUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/vast/VASTInterstitial;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/common/vast/VASTInterstitial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/heyzap/common/vast/VASTInterstitial$1;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    iput-object p2, p0, Lcom/heyzap/common/vast/VASTInterstitial$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 88
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/heyzap/common/vast/VASTInterstitial$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/heyzap/common/vast/VASTInterstitial$1;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/heyzap/common/vast/VASTInterstitial;->access$000(Lcom/heyzap/common/vast/VASTInterstitial;I)V

    .line 99
    const-string v2, "VASTPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 111
    :cond_0
    :goto_2
    return-void

    .line 103
    :cond_1
    if-eqz v1, :cond_2

    .line 104
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 110
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/heyzap/common/vast/VASTInterstitial$1;->this$0:Lcom/heyzap/common/vast/VASTInterstitial;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/common/vast/VASTInterstitial;->loadVideoWithData(Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 103
    :goto_4
    if-eqz v1, :cond_3

    .line 104
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 108
    :cond_3
    :goto_5
    throw v0

    .line 106
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    .line 102
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 97
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
