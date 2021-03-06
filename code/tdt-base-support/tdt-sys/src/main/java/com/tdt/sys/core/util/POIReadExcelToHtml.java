package com.tdt.sys.core.util;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Administrator
 */
public class POIReadExcelToHtml {

    public static void main(String [] args){
        String filePath = "D:\\home\\atlas\\temp";
        String path = "D:\\home\\atlas\\temp\\tmp1711584723192866974.xls";
        String docId = "221";
        String fileDir = "221/";
        String webUrl = "http://localhost:8080";
        String exportPath = filePath + "/" + fileDir;
        File exportFile = new File(exportPath);
        if(exportFile.exists()){
            deleteFile(exportFile);
        }
        if(!exportFile.exists()){
            exportFile.mkdirs();
        }
        try {
        	POIReadExcelToHtml phtml=new POIReadExcelToHtml();
            InputStream inputStream = new FileInputStream(new File(path));
            phtml.excelToHtml(filePath,inputStream,docId,fileDir,webUrl);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public  void excelToHtml(String filePath, InputStream inputStream, String docId, String fileDir, String seapdaWebUrl) throws Exception {
        String exportPath = filePath + "/" + fileDir;
        File exportFile = new File(exportPath);
        if(exportFile.exists()){
            deleteFile(exportFile);
        }
        if(!exportFile.exists()){
            exportFile.mkdirs();
        }
        StringBuffer sb =null;
        Workbook wb = WorkbookFactory.create(inputStream);// 此WorkbookFactory在POI-3.10版本中使用需要添加dom4j
        String head = htmlHead(wb, seapdaWebUrl);
        writeFile(head, filePath + "/" + fileDir + docId + ".html");  //写入头
        try {
            if (wb instanceof XSSFWorkbook) {
                XSSFWorkbook xWb = (XSSFWorkbook) wb;
                //生成内容
                for (int numSheet = 0; numSheet < wb.getNumberOfSheets(); numSheet++) {
                    Sheet sheet = wb.getSheetAt(numSheet);// 获取Sheet的内容
                    if (sheet == null) {
                        continue;
                    }
                    if(sb == null) {
                      sb = new StringBuffer();
                    }
                    sb.append("<div id='" + sheet.getSheetName() + "1' style='position:relative;top:30px;'>\n");
                    int lastRowNum = sheet.getLastRowNum();
                    Map<String, String> map[] = getRowSpanColSpanMap(sheet);
                    sb.append("<table style='border-collapse:collapse;'>\n");
                    writeFile(sb.toString(), filePath + "/" + fileDir + docId + ".html"); //追加写入前部分内容
                    sb = null;
                    StringBuffer ssb = null;
                    for (int rowNum = sheet.getFirstRowNum(); rowNum <= lastRowNum; rowNum++) {
                       if(ssb == null) {
                           ssb = new StringBuffer();
                       }
                        ssb.append("<tr>\n");
                        String htmlExcel = getExcelInfo(xWb,map, sheet, rowNum, true);
                        ssb.append(htmlExcel);
                        ssb.append("</tr>\n");
                        if(rowNum % 5000 == 0) {
                            //每5000行写一次
                            writeFile(ssb.toString(), filePath + "/" + fileDir + docId + ".html"); //追加写入部分内容
                            ssb = null; //防止内存溢出，清空
                        }
                    }
                    if(ssb != null){
                        ssb.append("</table>\n");
                        ssb.append("  </div>\n");
                    }else{
                        ssb = new StringBuffer();
                        ssb.append("</table>\n");
                        ssb.append("  </div>\n");
                    }
                    //每不足5000行一次写
                    writeFile(ssb.toString(), filePath + "/" + fileDir + docId + ".html"); //追加写入部分内容
                    ssb = null;
                }
        } else if (wb instanceof HSSFWorkbook) {
                HSSFWorkbook hWb = (HSSFWorkbook) wb;
                //生成内容
                for (int numSheet = 0; numSheet < wb.getNumberOfSheets(); numSheet++) {
                    Sheet sheet = wb.getSheetAt(numSheet);// 获取Sheet的内容
                    if (sheet == null) {
                        continue;
                    }
                    if(sb == null) {
                        sb = new StringBuffer();
                    }
                    sb.append("<div id='" + sheet.getSheetName() + "1' style='position:relative;top:30px;'>\n");
                    int lastRowNum = sheet.getLastRowNum();
                    Map<String, String> map[] = getRowSpanColSpanMap(sheet);
                    sb.append("<table style='border-collapse:collapse;'>\n");
                    writeFile(sb.toString(), filePath + "/" + fileDir + docId + ".html"); //追加写入前部分内容
                    sb = null;
                    StringBuffer ssb = null;
                    for (int rowNum = sheet.getFirstRowNum(); rowNum <= lastRowNum; rowNum++) {
                        if(ssb == null){
                            ssb = new StringBuffer();
                        }
                        ssb.append("<tr>\n");
                        String htmlExcel = getExcelInfo(hWb, map, sheet, rowNum, true);
                        ssb.append(htmlExcel);
                        ssb.append("</tr>\n");
                        if (rowNum % 5000 == 0) {
                            //每5000行写一次
                            writeFile(ssb.toString(), filePath + "/" + fileDir + docId + ".html"); //追加写入部分内容
                            ssb = null; //防止内存溢出，清空
                        }
                    }
                    if (ssb != null) {
                        ssb.append("</table>\n");
                        ssb.append("  </div>\n");
                    } else {
                        ssb = new StringBuffer();
                        ssb.append("</table>\n");
                        ssb.append("  </div>\n");
                    }
                    //每不足5000行一次写
                    writeFile(ssb.toString(), filePath + "/" + fileDir + docId + ".html"); //追加写入部分内容
                    ssb = null; //防止内存溢出，清空
                }
            }
    } catch(Exception e){
        e.printStackTrace();
        throw e;
    } finally
    {
        try {
            writeFile(htmlBottom(), filePath + "/" + fileDir + docId + ".html"); //追加写入最后内容
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}


    private  void writeFile(String content, String path) {
        FileOutputStream fos = null;
        BufferedWriter bw = null;
        try {
            File file = new File(path);
            fos = new FileOutputStream(file,true);
            bw = new BufferedWriter(new OutputStreamWriter(fos, "utf-8"));
            bw.write(content);
            bw.flush();
        } catch (FileNotFoundException fnfe) {
            fnfe.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } finally {
            try {
                if (bw != null)
                    bw.close();
                if (fos != null)
                    fos.close();
            } catch (IOException ie) {
            }
        }
    }

    private  String htmlHead(Workbook wb, String seapdaWebUrl) {
        StringBuffer sb = new StringBuffer();
        sb.append("<!DOCTYPE html>\n");
        sb.append("<html>\n");
        sb.append("<head>\n");
        sb.append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n");
        sb.append("    <link rel=\"stylesheet\" href=\"" + seapdaWebUrl + "/_js/easyui/themes/default/easyui.css\" type=\"text/css\"/>\n");
        sb.append("    <script type=text/javascript src=\"" + seapdaWebUrl + "/_js/easyui/jquery.min.js\"></script>\n");
        sb.append("    <script type=text/javascript src=\"" + seapdaWebUrl + "/_js/easyui/jquery.easyui.min.js\"></script>\n");
        sb.append("</head>\n");
        sb.append("<body>\n");
        sb.append("<div data-options=\"region:'center',border:false\" style=\"position:fixed; z-index:9999; \">\n");
        sb.append("<div id='viewTabs'>\n");
        //生成目录
        for (int numSheet = 0; numSheet < wb.getNumberOfSheets(); numSheet++) {
            Sheet sheet = wb.getSheetAt(numSheet);// 获取Sheet的内容
            if (sheet == null) {
                continue;
            }
            sb.append("<div title='" + sheet.getSheetName() + "' style='padding:5px'></div>\n");
        }
        sb.append("  </div>\n");
        sb.append("  </div>\n");
        return sb.toString();
    }

    private  String htmlBottom() {
        StringBuffer sb = new StringBuffer();
        sb.append("<script type=\"text/javascript\">\n");
        sb.append("$('#viewTabs').show();\n");
        sb.append("$('#viewTabs').tabs({\n");
        sb.append(" border:false,\n");
        sb.append("fit:true,\n");
        sb.append("    tabPosition:'top',\n");
        sb.append("onSelect:function(title,index){\n");
        sb.append("    var len = $('#viewTabs').tabs('tabs').length;\n");
        sb.append("    for(var i = 0 ; i < len ; i ++){\n");
        sb.append("        var titleT = $('#viewTabs').tabs('getTab',i).panel('options').title;\n");
        sb.append("        if(titleT == title){\n");
        sb.append("           $('#'+title+'1').show();\n");
        sb.append("       }else{\n");
        sb.append("           $('#'+titleT+'1').hide();\n");
        sb.append("       }\n");
        sb.append("    }\n");
        sb.append("\n");
        sb.append("}\n");
        sb.append("});\n");
        sb.append("</script>\n");
        sb.append("<style>\n");
        sb.append("  /*防止禁用JavaScript后失效，可以写在CSS中（新版浏览器支持，并逐渐成为标准）：*/\n");
        sb.append("  body {\n");
        sb.append("    -moz-user-select:none; /* Firefox私有属性 */\n");
        sb.append("    -webkit-user-select:none; /* WebKit内核私有属性 */\n");
        sb.append("    -ms-user-select:none; /* IE私有属性(IE10及以后) */\n");
        sb.append("    -khtml-user-select:none; /* KHTML内核私有属性 */\n");
        sb.append("    -o-user-select:none; /* Opera私有属性 */\n");
        sb.append("    user-select:none; /* CSS3属性 */\n");
        sb.append("  }\n");
        sb.append("</style>\n");
        sb.append("</body>\n");
        sb.append("</html>\n");
        return sb.toString();
    }


    private  String getExcelInfo(Workbook wb , Map<String, String> map[], Sheet sheet, int rowNum, boolean isWithStyle) {
        StringBuffer sb = new StringBuffer();
        Row row = null; // 兼容
        Cell cell = null; // 兼容
        row = sheet.getRow(rowNum);
        if (row == null) {
            //sb.append("<tr><td >  </td></tr>");
            return sb.append("").toString();
        }
        int lastColNum = row.getLastCellNum();
        for (int colNum = 0; colNum < lastColNum; colNum++) {
            cell = row.getCell(colNum);
            if (cell == null) { // 特殊情况 空白的单元格会返回null
                //sb.append("<td> </td>");
                continue;
            }
            String stringValue = getCellValue(cell);
            if (map[0].containsKey(rowNum + "," + colNum)) {
                String pointString = map[0].get(rowNum + "," + colNum);
                map[0].remove(rowNum + "," + colNum);
                int bottomeRow = Integer.valueOf(pointString.split(",")[0]);
                int bottomeCol = Integer.valueOf(pointString.split(",")[1]);
                int rowSpan = bottomeRow - rowNum + 1;
                int colSpan = bottomeCol - colNum + 1;
                sb.append("<td rowspan= '" + rowSpan + "' colspan= '" + colSpan + "' \n");
            } else if (map[1].containsKey(rowNum + "," + colNum)) {
                map[1].remove(rowNum + "," + colNum);
                continue;
            } else {
                sb.append("<td ");
            }
            // 判断是否需要样式
            if (isWithStyle) {
                dealExcelStyle(wb, sheet, cell, sb, stringValue);// 处理单元格样式
            }
            sb.append(">");
            if (stringValue == null || "".equals(stringValue.trim())) {
                sb.append("   ");
            } else {
                // 将ascii码为160的空格转换为html下的空格（ ）
//						if (stringValue.contains("x")) {
//							sb.append("<input type='text' id='" + stringValue + "' name='" + stringValue
//									+ "' value='' />");
//						} else {
                sb.append(stringValue.replace(String.valueOf((char) 160), " "));
//						}
            }
            sb.append("</td>\n");
        }

        return sb.toString();
    }


    private  Map<String, String>[] getRowSpanColSpanMap(Sheet sheet) {
        Map<String, String> map0 = new HashMap<String, String>();
        Map<String, String> map1 = new HashMap<String, String>();
        int mergedNum = sheet.getNumMergedRegions();
        CellRangeAddress range = null;
        for (int i = 0; i < mergedNum; i++) {
            range = sheet.getMergedRegion(i);
            int topRow = range.getFirstRow();
            int topCol = range.getFirstColumn();
            int bottomRow = range.getLastRow();
            int bottomCol = range.getLastColumn();
            map0.put(topRow + "," + topCol, bottomRow + "," + bottomCol);
            // System.out.println(topRow + "," + topCol + "," + bottomRow + ","
            // + bottomCol);
            int tempRow = topRow;
            while (tempRow <= bottomRow) {
                int tempCol = topCol;
                while (tempCol <= bottomCol) {
                    map1.put(tempRow + "," + tempCol, "");
                    tempCol++;
                }
                tempRow++;
            }
            map1.remove(topRow + "," + topCol);
        }
        Map[] map = {map0, map1};
        return map;
    }

    /**
     * 获取表格单元格Cell内容
     *
     * @param cell
     * @return
     */
    private  String getCellValue(Cell cell) {
        String result = new String();
        switch (cell.getCellTypeEnum()) {
            case NUMERIC:// 数字类型
                if (HSSFDateUtil.isCellDateFormatted(cell)) {// 处理日期格式、时间格式
                    SimpleDateFormat sdf = null;
                    if (cell.getCellStyle().getDataFormat() == HSSFDataFormat.getBuiltinFormat("h:mm")) {
                        sdf = new SimpleDateFormat("HH:mm");
                    } else {// 日期
                        sdf = new SimpleDateFormat("yyyy-MM-dd");
                    }
                    Date date = cell.getDateCellValue();
                    result = sdf.format(date);
                } else if (cell.getCellStyle().getDataFormat() == 58) {
                    // 处理自定义日期格式：m月d日(通过判断单元格的格式id解决，id的值是58)
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    double value = cell.getNumericCellValue();
                    Date date = org.apache.poi.ss.usermodel.DateUtil.getJavaDate(value);
                    result = sdf.format(date);
                } else {
                    double value = cell.getNumericCellValue();
                    CellStyle style = cell.getCellStyle();
                    DecimalFormat format = new DecimalFormat();
                    String temp = style.getDataFormatString();
                    // 单元格设置成常规
                    if (temp.equals("General")) {
                        format.applyPattern("#");
                    }
                    result = format.format(value);
                }
                break;
            case STRING:// String类型
                result = cell.getRichStringCellValue().toString();
                break;
            case BLANK:
                result = "";
                break;
            default:
                result = "";
                break;
        }
        return result;
    }

    /**
     * 处理表格样式
     *
     * @param wb
     * @param sheet
     * @param cell
     * @param sb
     */
    private  void dealExcelStyle(Workbook wb, Sheet sheet, Cell cell, StringBuffer sb, String stringValue) {
        CellStyle cellStyle = cell.getCellStyle();
        if (cellStyle != null) {
            HorizontalAlignment alignment = cellStyle.getAlignmentEnum();

            sb.append("align='" + convertAlignToHtml(alignment) + "' ");// 单元格内容的水平对齐方式
            VerticalAlignment verticalAlignment = cellStyle.getVerticalAlignmentEnum();
            sb.append("valign='" + convertVerticalAlignToHtml(verticalAlignment) + "' ");// 单元格中内容的垂直排列方式
            if (wb instanceof XSSFWorkbook) {
                XSSFFont xf = ((XSSFCellStyle) cellStyle).getFont();
                boolean boldWeight = xf.getBold();
                sb.append("style='");
                if(boldWeight) {
					sb.append("font-weight:bold;"); // 字体加粗
				}
                sb.append("font-size: " + xf.getFontHeight() / 2 + "%;"); // 字体大小
                int columnWidth = sheet.getColumnWidth(cell.getColumnIndex());

                sb.append("width:" + columnWidth + "%");

                XSSFColor xc = xf.getXSSFColor();
                if (xc != null && !"".equals(xc)) {
                    sb.append("color:#" + xc.getARGBHex().substring(2) + ";"); // 字体颜色
                }
                XSSFColor bgColor = (XSSFColor) cellStyle.getFillForegroundColorColor();
                if (bgColor != null && !"".equals(bgColor)) {
                    sb.append("background-color:#" + bgColor.getARGBHex().substring(2) + ";"); // 背景颜色
                }
                sb.append(getBorderStyle(0, cellStyle.getBorderTopEnum(),
                        ((XSSFCellStyle) cellStyle).getTopBorderXSSFColor()));
                sb.append(getBorderStyle(1, cellStyle.getBorderRightEnum(),
                        ((XSSFCellStyle) cellStyle).getRightBorderXSSFColor()));
                sb.append(getBorderStyle(2, cellStyle.getBorderBottomEnum(),
                        ((XSSFCellStyle) cellStyle).getBottomBorderXSSFColor()));
                sb.append(getBorderStyle(3, cellStyle.getBorderLeftEnum(),
                        ((XSSFCellStyle) cellStyle).getLeftBorderXSSFColor()));
            } else if (wb instanceof HSSFWorkbook) {
                HSSFFont hf = ((HSSFCellStyle) cellStyle).getFont(wb);
                boolean boldWeight = hf.getBold();
                short fontColor = hf.getColor();
                sb.append("style='");
                HSSFPalette palette = ((HSSFWorkbook) wb).getCustomPalette(); // 类HSSFPalette用于求的颜色的国际标准形式
                HSSFColor hc = palette.getColor(fontColor);
                if(boldWeight) {
					sb.append("font-weight:bold;"); // 字体加粗
				}
                sb.append("font-size: " + hf.getFontHeight() / 2 + "%;"); // 字体大小
                String fontColorStr = convertToStardColor(hc);
                if (fontColorStr != null && !"".equals(fontColorStr.trim())) {
                    sb.append("color:" + fontColorStr + ";"); // 字体颜色
                }
                int columnWidth = sheet.getColumnWidth(cell.getColumnIndex());
                sb.append("width:" + columnWidth + "px;");
                //sb.append("width:" + stringValue.trim().length() + "%");
                short bgColor = cellStyle.getFillForegroundColor();
                hc = palette.getColor(bgColor);
                String bgColorStr = convertToStardColor(hc);
                if (bgColorStr != null && !"".equals(bgColorStr.trim())) {
                    sb.append("background-color:" + bgColorStr + ";"); // 背景颜色
                }
                sb.append(getBorderStyle(palette, 0, cellStyle.getBorderTopEnum(), cellStyle.getTopBorderColor()));
                sb.append(getBorderStyle(palette, 1, cellStyle.getBorderRightEnum(), cellStyle.getRightBorderColor()));
                sb.append(getBorderStyle(palette, 3, cellStyle.getBorderLeftEnum(), cellStyle.getLeftBorderColor()));
                sb.append(getBorderStyle(palette, 2, cellStyle.getBorderBottomEnum(), cellStyle.getBottomBorderColor()));
            }
            sb.append("' ");
        }
    }

    /**
     * 单元格内容的水平对齐方式
     *
     * @param alignment
     * @return
     */
    private  String convertAlignToHtml(HorizontalAlignment alignment) {
        String align = "left";
        switch (alignment) {
            case LEFT:
                align = "left";
                break;
            case CENTER:
                align = "center";
                break;
            case RIGHT:
                align = "right";
                break;
            default:
                break;
        }
        return align;
    }

    /**
     * 单元格中内容的垂直排列方式
     *
     * @param verticalAlignment
     * @return
     */
    private  String convertVerticalAlignToHtml(VerticalAlignment verticalAlignment) {
        String valign = "middle";
        switch (verticalAlignment) {
            case BOTTOM:
                valign = "bottom";
                break;
            case CENTER:
                valign = "middle";
                break;
            case TOP:
                valign = "top";
                break;
            default:
                break;
        }
        return valign;
    }

    private  String convertToStardColor(HSSFColor hc) {
        StringBuffer sb = new StringBuffer("");
        if (hc != null) {
            if (HSSFColor.HSSFColorPredefined.AUTOMATIC.getIndex() == hc.getIndex()) {
                return null;
            }
            sb.append("#");
            for (int i = 0; i < hc.getTriplet().length; i++) {
                sb.append(fillWithZero(Integer.toHexString(hc.getTriplet()[i])));
            }
        }
        return sb.toString();
    }

    private  String fillWithZero(String str) {
        if (str != null && str.length() < 2) {
            return "0" + str;
        }
        return str;
    }

    static String[] bordesr = {"border-top:", "border-right:", "border-bottom:", "border-left:"};
    static String[] borderStyles = {"solid ", "solid ", "solid ", "solid ", "solid ", "solid ", "solid ", "solid ",
            "solid ", "solid", "solid", "solid", "solid", "solid"};

    private String getBorderStyle(HSSFPalette palette, int b, BorderStyle s, short t) {
        if (s.getCode() == 0)
            return bordesr[b] + borderStyles[s.getCode()] + "#d0d7e5 1px;";
        String borderColorStr = convertToStardColor(palette.getColor(t));
        borderColorStr = borderColorStr == null || borderColorStr.length() < 1 ? "#000000" : borderColorStr;
        return bordesr[b] + borderStyles[s.getCode()] + borderColorStr + " 1px;";
    }

    private String getBorderStyle(int b, BorderStyle s, XSSFColor xc) {
        if (s.getCode() == 0)
            return bordesr[b] + borderStyles[s.getCode()] + "#d0d7e5 1px;";
        if (xc != null && !"".equals(xc)) {
            String borderColorStr = xc.getARGBHex();// t.getARGBHex();
            borderColorStr = borderColorStr == null || borderColorStr.length() < 1 ? "#000000"
                    : borderColorStr.substring(2);
            return bordesr[b] + borderStyles[s.getCode()] + borderColorStr + " 1px;";
        }
        return "";
    }


    public static void deleteFile(File file) {
        if (file.exists()) {//判断文件是否存在
            if (file.isFile()) {//判断是否是文件
                file.delete();//删除文件
            } else if (file.isDirectory()) {//否则如果它是一个目录
                File[] files = file.listFiles();//声明目录下所有的文件 files[];
                for (int i = 0; i < files.length; i++) {//遍历目录下所有的文件
                    deleteFile(files[i]);//把每个文件用这个方法进行迭代
                }
                file.delete();//删除文件夹
            }
        }
    }




}
