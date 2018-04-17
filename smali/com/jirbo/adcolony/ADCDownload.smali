.class Lcom/jirbo/adcolony/ADCDownload;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCDownload$Listener;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "okio error, disabling AdColony"


# instance fields
.field a:Lcom/jirbo/adcolony/d;

.field b:Lcom/jirbo/adcolony/ADCDownload$Listener;

.field c:Ljava/lang/String;

.field d:Ljava/io/File;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:Z

.field j:I

.field k:Z

.field l:J

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field n:Ljavax/net/ssl/SSLContext;

.field o:I

.field p:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/d;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V
    .locals 2
    .param p1, "controller"    # Lcom/jirbo/adcolony/d;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;
    .param p4, "filepath"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;Z)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCDownload;->l:J

    .line 54
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    .line 56
    if-nez p2, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    .line 58
    :cond_0
    iput-object p3, p0, Lcom/jirbo/adcolony/ADCDownload;->b:Lcom/jirbo/adcolony/ADCDownload$Listener;

    .line 59
    if-eqz p4, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    .line 65
    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->f:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method a()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->b:Lcom/jirbo/adcolony/ADCDownload$Listener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/ADCDownload$Listener;->on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V

    .line 448
    return-void
.end method

.method a(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 415
    instance-of v0, p1, Lcom/jirbo/adcolony/o$a;

    if-eqz v0, :cond_0

    .line 417
    if-eqz p2, :cond_1

    .line 419
    check-cast p1, Lcom/jirbo/adcolony/o$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCDownload;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/jirbo/adcolony/o$a;->i:J

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    check-cast p1, Lcom/jirbo/adcolony/o$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCDownload;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/jirbo/adcolony/o$a;->j:J

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 77
    invoke-static {p0}, Lcom/jirbo/adcolony/z;->a(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method c()V
    .locals 7

    .prologue
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 430
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/jirbo/adcolony/o$a;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    check-cast v0, Lcom/jirbo/adcolony/o$a;

    .line 433
    new-instance v1, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 434
    const-string v2, "url"

    iget-object v3, v0, Lcom/jirbo/adcolony/o$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, "success"

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 436
    const-string v2, "attempts"

    iget v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 437
    const-string v2, "connection"

    iget-object v3, v0, Lcom/jirbo/adcolony/o$a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "first_byte"

    iget-wide v4, v0, Lcom/jirbo/adcolony/o$a;->i:J

    long-to-float v3, v4

    div-float/2addr v3, v6

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 439
    const-string v2, "last_byte"

    iget-wide v4, v0, Lcom/jirbo/adcolony/o$a;->j:J

    long-to-float v0, v4

    div-float/2addr v0, v6

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 440
    const-string v0, "size"

    iget v2, p0, Lcom/jirbo/adcolony/ADCDownload;->o:I

    invoke-virtual {v1, v0, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 441
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v0, v0, Lcom/jirbo/adcolony/t;->g:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$c;->a(Lcom/jirbo/adcolony/ADCData$i;)Lcom/jirbo/adcolony/ADCData$c;

    .line 443
    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v10, 0x0

    .line 83
    move v5, v0

    :goto_0
    if-gt v5, v11, :cond_4

    .line 87
    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 90
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->f:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 92
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "Performing POST"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 94
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1e

    .line 96
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 97
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    move-object v4, v1

    .line 100
    :goto_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v1, :cond_2

    .line 102
    const-string v1, "POST"

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 111
    :goto_2
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 114
    :goto_3
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 115
    :goto_4
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Post data: "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 119
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_5
    :try_start_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-nez v1, :cond_3

    .line 125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    .line 127
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v3, v1

    .line 128
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v1, :cond_a

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:Ljava/util/Map;

    .line 132
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 133
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, v0

    .line 134
    :goto_8
    if-eq v1, v2, :cond_c

    move v0, v2

    .line 137
    :goto_9
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_b

    .line 139
    aget-byte v7, v4, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 168
    :catch_0
    move-exception v0

    .line 170
    :try_start_2
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v3, "okio error, disabling AdColony"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 171
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 172
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 411
    :goto_a
    return-void

    .line 107
    :cond_2
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 389
    :catch_1
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->c(Ljava/lang/String;)V

    .line 394
    :cond_3
    if-ne v5, v11, :cond_1d

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v1, "androidads23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v10, Lcom/jirbo/adcolony/a;->p:Z

    .line 408
    :cond_5
    iput-boolean v10, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 409
    iput v11, p0, Lcom/jirbo/adcolony/ADCDownload;->j:I

    .line 410
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto :goto_a

    .line 112
    :cond_6
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto/16 :goto_3

    .line 114
    :cond_7
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    .line 120
    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 127
    :cond_9
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_6

    .line 130
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_7

    .line 141
    :cond_b
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, v0

    .line 142
    goto/16 :goto_8

    .line 143
    :cond_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 147
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 155
    :try_start_6
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->o:I

    .line 157
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v1, "androidads23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jirbo/adcolony/a;->al:J

    .line 162
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 163
    iput v5, p0, Lcom/jirbo/adcolony/ADCDownload;->j:I

    .line 164
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_a

    .line 175
    :catch_2
    move-exception v0

    .line 177
    :try_start_7
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "okhttp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 178
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 179
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_a

    .line 149
    :catch_3
    move-exception v0

    .line 151
    :try_start_8
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 152
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_a

    .line 186
    :cond_e
    const/16 v3, 0x7530

    :try_start_9
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 187
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 189
    :cond_f
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    if-eqz v3, :cond_15

    .line 191
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCStorage;->b()V

    .line 193
    :cond_10
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 194
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 199
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v6

    .line 216
    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->o:I

    .line 219
    const/16 v0, 0x400

    new-array v7, v0, [B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 223
    const/4 v0, 0x0

    const/16 v8, 0x400

    :try_start_c
    invoke-virtual {v6, v7, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 224
    iget-object v8, p0, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/jirbo/adcolony/ADCDownload;->a(Ljava/lang/Object;Z)V
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 234
    :cond_11
    if-eq v0, v2, :cond_14

    .line 236
    if-lez v1, :cond_13

    .line 238
    if-le v0, v1, :cond_12

    move v0, v1

    .line 239
    :cond_12
    sub-int/2addr v1, v0

    .line 242
    :cond_13
    :try_start_d
    iget v8, p0, Lcom/jirbo/adcolony/ADCDownload;->o:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/jirbo/adcolony/ADCDownload;->o:I

    .line 243
    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 246
    const/4 v0, 0x0

    const/16 v8, 0x400

    :try_start_e
    invoke-virtual {v6, v7, v0, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    move-result v0

    .line 256
    if-nez v1, :cond_11

    .line 259
    :cond_14
    :try_start_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/ADCDownload;->a(Ljava/lang/Object;Z)V

    .line 260
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 261
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 262
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 264
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 383
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 384
    iput v5, p0, Lcom/jirbo/adcolony/ADCDownload;->j:I

    .line 385
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto/16 :goto_a

    .line 201
    :catch_4
    move-exception v0

    .line 203
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "okhttp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 204
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 205
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 208
    :catch_5
    move-exception v0

    .line 210
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "okhttp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 211
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 212
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 226
    :catch_6
    move-exception v0

    .line 228
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v3, "okio error, disabling AdColony"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 229
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 230
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 248
    :catch_7
    move-exception v0

    .line 250
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v3, "okio error, disabling AdColony"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 251
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 252
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 268
    :cond_15
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    if-eqz v3, :cond_18

    .line 270
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_16

    .line 272
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 273
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    .line 276
    :cond_16
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v3, :cond_17

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 277
    :goto_c
    if-lez v3, :cond_18

    .line 279
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Got HTTP response "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " - counting as completed submission for 3rd party tracking."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 280
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->o:I

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 284
    iput v5, p0, Lcom/jirbo/adcolony/ADCDownload;->j:I

    .line 285
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto/16 :goto_a

    .line 276
    :cond_17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    goto :goto_c

    .line 289
    :cond_18
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_19

    .line 291
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 292
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    .line 293
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - use ssl!"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 299
    :goto_d
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - before pause"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 302
    const-wide/16 v6, 0xbb8

    :try_start_10
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 308
    :goto_e
    :try_start_11
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - getInputStream"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 312
    :try_start_12
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    move-result-object v0

    .line 328
    :goto_f
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 330
    const/16 v1, 0x400

    new-array v6, v1, [B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    .line 333
    const/4 v1, 0x0

    const/16 v3, 0x400

    :try_start_14
    invoke-virtual {v0, v6, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v3, v1

    .line 334
    :goto_10
    if-eq v3, v2, :cond_1c

    move v1, v2

    .line 337
    :goto_11
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_1b

    .line 339
    aget-byte v7, v6, v1

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_11

    .line 344
    :catch_8
    move-exception v0

    .line 346
    :try_start_15
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 347
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 297
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1

    goto :goto_d

    .line 312
    :cond_1a
    :try_start_16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1

    move-result-object v0

    goto :goto_f

    .line 314
    :catch_9
    move-exception v0

    .line 316
    :try_start_17
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "okhttp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 317
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 318
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 321
    :catch_a
    move-exception v0

    .line 323
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "okhttp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 324
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 325
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_a

    .line 341
    :cond_1b
    const/4 v1, 0x0

    const/16 v3, 0x400

    :try_start_18
    invoke-virtual {v0, v6, v1, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1

    move-result v1

    move v3, v1

    .line 342
    goto :goto_10

    .line 350
    :catch_b
    move-exception v0

    .line 352
    :try_start_19
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v3, "okio error, disabling AdColony"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 353
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 354
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_a

    .line 357
    :catch_c
    move-exception v0

    .line 359
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v3, "okio error, disabling AdColony"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 360
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 361
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 365
    :cond_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1

    .line 369
    :try_start_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1

    .line 378
    :try_start_1b
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->o:I

    .line 380
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto/16 :goto_b

    .line 371
    :catch_d
    move-exception v0

    .line 373
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 374
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1

    goto/16 :goto_a

    .line 398
    :cond_1d
    add-int/lit8 v0, v5, 0x1

    mul-int/lit8 v0, v0, 0xa

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :try_start_1c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_f

    .line 404
    :goto_12
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Trying again ("

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, "/3)"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 83
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 304
    :catch_e
    move-exception v3

    goto/16 :goto_e

    .line 400
    :catch_f
    move-exception v0

    goto :goto_12

    :cond_1e
    move-object v4, v1

    goto/16 :goto_1
.end method
