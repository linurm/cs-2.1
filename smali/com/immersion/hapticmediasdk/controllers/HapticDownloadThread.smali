.class public Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/String; = "HapticDownloadThread"

.field private static final b:I = 0x1000

.field public static final synthetic bЕЕ04150415ЕЕ:Z

.field private static final c:I = 0xea60


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private h:Lcom/immersion/hapticmediasdk/utils/FileManager;

.field private volatile i:Z

.field private volatile j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->bЕЕ04150415ЕЕ:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ZLcom/immersion/hapticmediasdk/utils/FileManager;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "HapticDownloadThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    iput-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->f:Z

    iput-object p4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v1, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->bЕЕ04150415ЕЕ:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string v0, "HapticDownloadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed Haptic Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->writeToFile(Ljava/io/InputStream;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "HapticDownloadThread"

    const-string v1, "Failed to open connection"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "haptic_download_exception"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const-string v1, "HapticDownloadThread"

    const-string v2, "Fail to download haptic file."

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v1

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v1
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    return-void
.end method

.method public writeToFile(Ljava/io/InputStream;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x1000

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v3, [B

    if-eqz p1, :cond_e

    if-lez p2, :cond_e

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v7, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/immersion/hapticmediasdk/utils/FileManager;->getUniqueFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "dat.hapt"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->f:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v6, v4}, Lcom/immersion/hapticmediasdk/utils/FileManager;->makeOutputStreamForStreaming(Ljava/lang/String;)Ljava/io/BufferedOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    iget-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    if-nez v1, :cond_1

    const-string v1, "downloaded an empty file"

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const-string v7, "haptic_download_exception"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string v4, "HapticDownloadThread"

    invoke-static {v4, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v1, v3}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v6, v4, v3}, Lcom/immersion/hapticmediasdk/utils/FileManager;->makeOutputStream(Ljava/lang/String;Ljava/io/BufferedInputStream;)Ljava/io/BufferedOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    goto :goto_0

    :cond_3
    :try_start_3
    iget-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->f:Z

    if-nez v4, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    if-nez v0, :cond_5

    const-string v0, "downloaded an empty file"

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const-string v7, "haptic_download_exception"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    const-string v4, "HapticDownloadThread"

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v0, v3}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_1

    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    const-string v0, "HapticDownloadThread"

    const-string v4, "file download completed"

    invoke-static {v0, v4}, Lcom/immersion/hapticmediasdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    if-nez v0, :cond_9

    const-string v0, "downloaded an empty file"

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const-string v7, "haptic_download_exception"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    const-string v4, "HapticDownloadThread"

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v0, v3}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    move v0, v1

    goto/16 :goto_1

    :cond_a
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    if-nez v4, :cond_7

    const/4 v4, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    if-nez v4, :cond_b

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    :cond_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_3
    iget-boolean v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    if-nez v3, :cond_d

    const-string v3, "downloaded an empty file"

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const-string v7, "haptic_download_exception"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    const-string v4, "HapticDownloadThread"

    invoke-static {v4, v3}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v3, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v2, v1}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    throw v0

    :cond_e
    iget-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->i:Z

    if-nez v1, :cond_10

    const-string v1, "downloaded an empty file"

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const-string v7, "haptic_download_exception"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->g:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->j:Z

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->e:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    const-string v3, "HapticDownloadThread"

    invoke-static {v3, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v1, v4}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->h:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3
.end method
