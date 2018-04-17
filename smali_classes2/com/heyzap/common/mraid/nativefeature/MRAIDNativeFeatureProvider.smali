.class public Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;
.super Ljava/lang/Object;
.source "MRAIDNativeFeatureProvider.java"


# static fields
.field public static final ACTION_HANDLE_CUSTOM_EVENT:Ljava/lang/String; = "android.provider.calendar.action.HANDLE_CUSTOM_EVENT"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISPLAY_COLOR:Ljava/lang/String; = "displayColor"

.field public static final EVENT_COLOR:Ljava/lang/String; = "eventColor"

.field public static final EVENT_COLOR_KEY:Ljava/lang/String; = "eventColor_index"

.field public static final EVENT_LOCATION:Ljava/lang/String; = "eventLocation"

.field public static final EXTRA_CUSTOM_APP_URI:Ljava/lang/String; = "customAppUri"

.field public static final EXTRA_EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final EXTRA_EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EXTRA_EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field public static final STATUS:Ljava/lang/String; = "eventStatus"

.field private static final TAG:Ljava/lang/String; = "MRAIDNativeFeatureProvider"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private final context:Landroid/content/Context;

.field private final nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->storePictureInGallery(Ljava/lang/String;)V

    return-void
.end method

.method private copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 235
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 237
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 238
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 246
    :goto_1
    return-void

    .line 241
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "MRAIDNativeFeatureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving picture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAlbumDir()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 249
    .line 250
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Image"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    const-string v0, "MRAIDNativeFeatureProvider"

    const-string v2, "Failed to create camera directory"

    invoke-static {v0, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-object v1

    .line 263
    :cond_0
    const-string v0, "MRAIDNativeFeatureProvider"

    const-string v2, "External storage is not mounted READ/WRITE."

    invoke-static {v0, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    move-object v1, v0

    .line 265
    goto :goto_0
.end method

.method private storePictureInGallery(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->getAlbumDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "MRAIDNativeFeatureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving image into: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 213
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 214
    invoke-direct {p0, v0, v2}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 215
    iget-object v0, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x0

    new-instance v3, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider$2;

    invoke-direct {v3, p0}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider$2;-><init>(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;)V

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 224
    const-string v0, "MRAIDNativeFeatureProvider"

    const-string v1, "Saved image successfully"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string v1, "MRAIDNativeFeatureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to save image due to invalid URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    const-string v1, "MRAIDNativeFeatureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final callTel(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    iget-object v1, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    :cond_0
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 18

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v2}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isCalendarSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    const-string v2, "\\"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\"{"

    const-string v4, "{"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "}\""

    const-string v4, "}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v2, "description"

    const-string v4, "Untitled"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    const-string v2, "location"

    const-string v4, "unknown"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 76
    const-string v2, "summary"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 93
    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "yyyy-MM-dd\'T\'HH:mmZ"

    aput-object v4, v11, v2

    const/4 v2, 0x1

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v4, v11, v2

    .line 98
    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    .line 99
    const/4 v2, 0x0

    const-string v4, "start"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .line 100
    const/4 v2, 0x1

    const-string v4, "end"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    .line 102
    const-wide/16 v6, 0x0

    .line 103
    const-wide/16 v4, 0x0

    .line 105
    const/4 v2, 0x0

    move/from16 v17, v2

    move-wide v2, v4

    move-wide v4, v6

    move/from16 v7, v17

    :goto_1
    array-length v6, v12

    if-ge v7, v6, :cond_4

    .line 106
    aget-object v6, v12, v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    :cond_1
    :goto_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 110
    :cond_2
    aget-object v6, v12, v7

    const-string v13, "([+-]\\d\\d):(\\d\\d)$"

    const-string v14, "$1$2"

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v7

    .line 111
    array-length v13, v11

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_1

    aget-object v14, v11, v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    new-instance v15, Ljava/text/SimpleDateFormat;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    if-nez v7, :cond_3

    .line 115
    aget-object v14, v12, v7

    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2

    .line 117
    :cond_3
    aget-object v14, v12, v7

    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    goto :goto_2

    .line 120
    :catch_0
    move-exception v14

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 137
    :cond_4
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "vnd.android.cursor.item/event"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 138
    const-string v7, "title"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v7, "description"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v7, "eventLocation"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_5

    .line 143
    const-string v7, "beginTime"

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    .line 147
    const-string v4, "endTime"

    invoke-virtual {v6, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 156
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 157
    :catch_1
    move-exception v2

    .line 158
    const-string v3, "MRAIDNativeFeatureProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 169
    const-string v0, "market:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    iget-object v1, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    iget-object v1, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public sendSms(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    iget-object v1, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    :cond_0
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isStorePictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider$1;-><init>(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    :cond_0
    return-void
.end method
