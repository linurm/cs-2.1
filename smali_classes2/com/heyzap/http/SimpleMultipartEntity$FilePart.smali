.class Lcom/heyzap/http/SimpleMultipartEntity$FilePart;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/http/SimpleMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public header:[B

.field final synthetic this$0:Lcom/heyzap/http/SimpleMultipartEntity;


# direct methods
.method public constructor <init>(Lcom/heyzap/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/heyzap/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 174
    iput-object p3, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 175
    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 178
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/heyzap/http/SimpleMultipartEntity;

    invoke-static {v0}, Lcom/heyzap/http/SimpleMultipartEntity;->access$000(Lcom/heyzap/http/SimpleMultipartEntity;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/heyzap/http/SimpleMultipartEntity;

    invoke-static {v0, p1, p2}, Lcom/heyzap/http/SimpleMultipartEntity;->access$100(Lcom/heyzap/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/heyzap/http/SimpleMultipartEntity;

    invoke-static {v0, p3}, Lcom/heyzap/http/SimpleMultipartEntity;->access$200(Lcom/heyzap/http/SimpleMultipartEntity;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    invoke-static {}, Lcom/heyzap/http/SimpleMultipartEntity;->access$300()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    invoke-static {}, Lcom/heyzap/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    const-string v2, "createHeader ByteArrayOutputStream exception"

    invoke-static {v2, v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getTotalLength()J
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/heyzap/http/SimpleMultipartEntity;

    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/heyzap/http/SimpleMultipartEntity;->access$500(Lcom/heyzap/http/SimpleMultipartEntity;I)V

    .line 203
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 206
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 207
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 208
    iget-object v3, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/heyzap/http/SimpleMultipartEntity;

    invoke-static {v3, v2}, Lcom/heyzap/http/SimpleMultipartEntity;->access$500(Lcom/heyzap/http/SimpleMultipartEntity;I)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {}, Lcom/heyzap/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 211
    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/heyzap/http/SimpleMultipartEntity;

    invoke-static {}, Lcom/heyzap/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Lcom/heyzap/http/SimpleMultipartEntity;->access$500(Lcom/heyzap/http/SimpleMultipartEntity;I)V

    .line 212
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 214
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "Cannot close input stream"

    invoke-static {v1, v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
