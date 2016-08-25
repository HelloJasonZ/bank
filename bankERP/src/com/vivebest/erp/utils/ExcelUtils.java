package com.vivebest.erp.utils;

import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import com.vivebest.erp.entity.Transactions;

public class ExcelUtils {
	/**
	 * 创建excel文档， [@param](http://my.oschina.net/u/2303379) list 数据
	 * 
	 * @param keys
	 *            list中map的key数组集合
	 * @param columnNames
	 *            excel的列名
	 * */
	public static Workbook createWorkBook(List<Transactions> List,
			String columnNames[]) {
		// 创建excel工作簿
		Workbook wb = new HSSFWorkbook();
		// 创建第一个sheet（页），并命名
		Sheet sheet = wb.createSheet("sheet1");
		// 手动设置列宽。第一个参数表示要为第几列设；，第二个参数表示列的宽度，n为列高的像素数。
		for (int i = 0; i < columnNames.length; i++) {
			sheet.setColumnWidth((short) i, (short) (35.7 * 150));
		}

		// 创建第一行
		Row row = sheet.createRow((short) 0);

		// 创建两种单元格格式
		CellStyle cs = wb.createCellStyle();
		CellStyle cs2 = wb.createCellStyle();

		// 创建两种字体
		Font f = wb.createFont();
		Font f2 = wb.createFont();

		// 创建第一种字体样式（用于列名）
		f.setFontHeightInPoints((short) 10);
		f.setColor(IndexedColors.BLACK.getIndex());
		f.setBoldweight(Font.BOLDWEIGHT_BOLD);

		// 创建第二种字体样式（用于值）
		f2.setFontHeightInPoints((short) 10);
		f2.setColor(IndexedColors.BLACK.getIndex());

		// Font f3=wb.createFont();
		// f3.setFontHeightInPoints((short) 10);
		// f3.setColor(IndexedColors.RED.getIndex());

		// 设置第一种单元格的样式（用于列名）
		cs.setFont(f);
		cs.setBorderLeft(CellStyle.BORDER_THIN);
		cs.setBorderRight(CellStyle.BORDER_THIN);
		cs.setBorderTop(CellStyle.BORDER_THIN);
		cs.setBorderBottom(CellStyle.BORDER_THIN);
		cs.setAlignment(CellStyle.ALIGN_CENTER);

		// 设置第二种单元格的样式（用于值）
		cs2.setFont(f2);
		cs2.setBorderLeft(CellStyle.BORDER_THIN);
		cs2.setBorderRight(CellStyle.BORDER_THIN);
		cs2.setBorderTop(CellStyle.BORDER_THIN);
		cs2.setBorderBottom(CellStyle.BORDER_THIN);
		cs2.setAlignment(CellStyle.ALIGN_CENTER);
		// 设置列名
		for (int i = 0; i < columnNames.length; i++) {
			Cell cell = row.createCell(i);
			cell.setCellValue(columnNames[i]);
			cell.setCellStyle(cs);
		}
		// 设置每行每列的值
		int i = 1;
		for (Transactions transactions : List) {
			Row row1 = sheet.createRow((short) i);

			Cell cell0 = row1.createCell(0);
			cell0.setCellValue(transactions.getTrNumber() == null ? " "
					: transactions.getTrNumber().toString());
			cell0.setCellStyle(cs2);

			Cell cell1 = row1.createCell(1);
			cell1.setCellValue(transactions.getAcNumber() == null ? " "
					: transactions.getAcNumber().toString());
			cell1.setCellStyle(cs2);

			Cell cell2 = row1.createCell(2);
			cell2.setCellValue(transactions.getTrBalance() == null ? " "
					: transactions.getTrBalance().toString());
			cell2.setCellStyle(cs2);

			Cell cell3 = row1.createCell(3);
			cell3.setCellValue(transactions.getTrTime() == null ? " "
					: transactions.getTrTime().toString());
			cell3.setCellStyle(cs2);

			Cell cell4 = row1.createCell(4);
			switch (transactions.getTrType()) {
				case 1:
					cell4.setCellValue("取款");
					break;
				case 2:
					cell4.setCellValue("存款");
					break;
				case 3:
					cell4.setCellValue("转入");
					break;
				case 4:
					cell4.setCellValue("转出");
					break;
				default:
					break;
				}
			cell4.setCellStyle(cs2);

			Cell cell5 = row1.createCell(5);
			cell5.setCellValue(transactions.getTrAddress() == null ? " "
					: transactions.getTrAddress().toString());
			cell5.setCellStyle(cs2);
			i++;

		}
		/*for (short i = 1; i < List.size(); i++) {
			// Row 行,Cell 方格 , Row 和 Cell 都是从0开始计数的
			// 创建一行，在页sheet上
			Row row1 = sheet.createRow((short) i);
			// 在row行上创建一个方格
			for (short j = 0; j < columnNames.length; j++) {
				Cell cell = row1.createCell(j);
				cell.setCellValue(list.get(i) == null ? " " : list.get(i)
						.toString());
				cell.setCellStyle(cs2);
			}
		}*/
		return wb;
	}
}